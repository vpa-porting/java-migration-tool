package porting.expr

import io.ksmt.sort.KSort
import org.jetbrains.research.libsl.type.*
import porting.smt.SMTContext
import porting.typeResolveError

fun Type.sort(ctx: SMTContext): KSort {
    return when (this) {
        is NullType -> ctx.nullSort
        is TypeAlias -> this.originalType.resolve()?.sort(ctx) ?: throw typeResolveError(this.originalType)

        is PrimitiveType -> this.sort(ctx)

        is ArrayType -> {
            if (this.generics.size != 1) throw IllegalArgumentException("Array type should have 1 generic")
            val type = this.generics[0].resolve()?.sort(ctx) ?: throw typeResolveError(this.generics[0])
            return ctx.mkArraySort(type, ctx.bv32Sort)
        }

        is ListType -> {
            if (this.generics.size != 1) throw IllegalArgumentException("List type should have 1 generic")
            val type = this.generics[0].resolve()?.sort(ctx) ?: throw typeResolveError(this.generics[0])
            return ctx.mkArraySort(type, ctx.bv32Sort)
        }

        is MapType -> {
            if (this.generics.size != 2) throw IllegalArgumentException("Map type should have 2 generic")
            val keyType = this.generics[0].resolve()?.sort(ctx) ?: throw typeResolveError(this.generics[0])
            val valueType = this.generics[1].resolve()?.sort(ctx) ?: throw typeResolveError(this.generics[1])
            return ctx.mkArraySort(valueType, keyType)
        }


        is RealType -> this.sort(ctx)
        is StructuredType -> ctx.mkStructSort(this.name)
        is EnumType -> ctx.mkStructSort(this.name)
        is GenericType -> ctx.mkStructSort(this.name)
        is EnumLikeSemanticType -> ctx.mkStructSort(this.name)
        is SimpleType -> ctx.mkStructSort(this.name)
    }
}

fun PrimitiveType.sort(ctx: SMTContext): KSort {
    return when (this) {
        is AnyType -> ctx.anySort
        is NothingType -> ctx.nothingSort
        is VoidType -> ctx.voidSort
        is CharType -> ctx.bv16Sort // Java char is an unsigned UTF-16 code unit.
        is BoolType -> ctx.boolSort
        is Int8Type -> ctx.bv8Sort
        is Int16Type -> ctx.bv16Sort
        is Int32Type -> ctx.bv32Sort
        is Int64Type -> ctx.bv64Sort
        is UnsignedInt8Type -> ctx.bv16Sort
        is UnsignedInt16Type -> ctx.bv8Sort
        is UnsignedInt32Type -> ctx.bv32Sort
        is UnsignedInt64Type -> ctx.bv64Sort
        is Float32Type -> ctx.fp32Sort
        is Float64Type -> ctx.fp64Sort
        is StringType -> ctx.stringSort
        is LiteralType -> TODO("Not supported yet")
        else -> throw IllegalStateException()
    }
}

fun RealType.sort(ctx: SMTContext): KSort {
    return when (this.name) {
        "float" -> ctx.fp32Sort
        "double" -> ctx.fp64Sort
        "int" -> ctx.bv32Sort
        else -> throw IllegalStateException("Can't get sort for $this")
    }
}
