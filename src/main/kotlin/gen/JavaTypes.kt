package porting.gen

import org.jetbrains.research.libsl.nodes.references.TypeReference
import org.jetbrains.research.libsl.type.*
import porting.expr.*
import porting.typeResolveError

fun TypeReference?.toJavaType(): String {
    if (this == null) return "void"
    val resolved = this.resolve() ?: throw typeResolveError(this)
    return resolved.toJavaType()
}

fun Type?.toJavaType(): String {
    if (this == null) return "void"
    return when (this) {
        is NullType -> throw IllegalArgumentException("Java haven't NullType")

        is TypeAlias -> this.originalType.toJavaType()
        is PrimitiveType -> this.toJavaType()

        is ArrayType -> {
            if (this.generics.size != 1) throw Exception()
            val type = this.generics[0].toJavaType()
            return "$type[]"
        }

        is ListType -> {
            if (this.generics.size != 1) throw Exception()
            val type = this.generics[0].toJavaType()
            return "List<$type>"
        }

        is MapType -> {
            if (this.generics.size != 2) throw Exception()
            val keyType = this.generics[0].toJavaType()
            val valueType = this.generics[1].toJavaType()
            return "Map<$keyType, $valueType>"
        }

        is RealType -> this.toJavaType()
        is EnumType -> this.name
        is GenericType -> this.name
        is EnumLikeSemanticType -> this.name
        is SimpleType -> this.name
        is StructuredType -> this.name
    }
}

fun PrimitiveType.toJavaType(): String {
    return when (this) {
        is AnyType -> "Object"
        is NothingType -> throw IllegalStateException("Java haven't Nothing type")
        is VoidType -> "void"
        is CharType -> "char"
        is BoolType -> "boolean"
        is Int8Type -> "byte"
        is Int16Type -> "short"
        is Int32Type -> "int"
        is Int64Type -> "long"
        is UnsignedInt8Type -> throw IllegalStateException("Java haven't unsigned types")
        is UnsignedInt16Type -> throw IllegalStateException("Java haven't unsigned types")
        is UnsignedInt32Type -> throw IllegalStateException("Java haven't unsigned types")
        is UnsignedInt64Type -> throw IllegalStateException("Java haven't unsigned types")
        is Float32Type -> "float"
        is Float64Type -> "double"
        is StringType -> "String"
        is LiteralType -> TODO("Not supported yet")
        else -> throw IllegalStateException()
    }
}

fun RealType.toJavaType(): String {
    return when (this.name) {
        "float", "double", "int" -> this.name
        else -> throw IllegalArgumentException("Can't get java type for $this")
    }
}

fun Type?.defaultValue() = this.toJavaType().javaTypeDefaultValue()

fun String.javaTypeDefaultValue() = when (this) {
    "byte", "short", "int", "long" -> LInt(0)
    "float", "double" -> LFloat(0.0)
    "boolean" -> LBool(false)
    else -> LNull
}
