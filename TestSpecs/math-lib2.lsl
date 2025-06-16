libsl "1.0.0";
library `MathLib2`
    version "1.0.0";

import java-17;

typealias byte = int8;
typealias int = int32;

define action SQRT(i: double): double;
define action POW(i: double, j: double): double;

type org.test.math2.TestMath2 {

}

automaton org.test.math2.TestMath2: org.test.math2.TestMath2 {

    fun pow2Neg(i: double, j: double): double {
        result = action POW(2.0 * i, -j);
    }

    fun sqrtPlus10(i: double): double {
        result = action SQRT(i + 10.0);
    }
}
