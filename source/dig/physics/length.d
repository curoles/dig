/**
 * Length.
 *
 * Authors:   Igor Lesik 2015
 * Copyright: (C) Igor Lesik
 *
 * License:
 * Distributed under the Boost Software License, Version 1.0.
 * (See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
 *
 */
module dig.physics.length;

import dig.physics.realnum;
import dig.physics.quantity;

enum Unit : ubyte {
    m,    // metre, meter
    inch, // 0.0254 metre
    yard, // 0.9144 metre
    mile, // 1.609344 km
    ft    // 0.3048 metre
}

public struct Length
{
    enum quantity = dig.physics.quantity.Length;

public:
    Real value;
    Unit unit;

public:
    @property Real m   (Real    m) { unit = Unit.m;    return value = m; }
    @property Real inch(Real inch) { unit = Unit.inch; return value = inch; }
    @property Real yard(Real yard) { unit = Unit.yard; return value = yard; }
    @property Real mile(Real mile) { unit = Unit.mile; return value = mile; }
    @property Real   ft(Real   ft) { unit = Unit.ft;   return value = ft; }


    @property Real m() { final switch (unit) {
        case Unit.m:    return value;
        case Unit.inch: return in2m(value);
        case Unit.yard: return yd2m(value);
        case Unit.mile: return mi2m(value);
        case Unit.ft:   return ft2m(value);
    }}


    @property Real convertToMetre() { return m(m); }
    @property Real convertToInch()  { return inch(inch); }
}


