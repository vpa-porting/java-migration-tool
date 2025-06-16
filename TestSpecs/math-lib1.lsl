libsl "1.0.0";
library `MathLib1`
    version "1.0.0";

import java-17;

typealias byte = int8;
typealias int = int32;

define action SQRT(i: double): double;
define action POW(i: double, j: double): double;

type org.test.math1.TestMath1 {

}

automaton org.test.math.TestMath1: org.test.math.TestMath1 {

    fun hypot(i: double, j: double): double {
        var x2: double = action POW(i, 2.0);
        var y2: double = action POW(j, 2.0);
        result = action SQRT(x2 + y2);
    }
}
