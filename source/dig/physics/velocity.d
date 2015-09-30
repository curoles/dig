/**
 * Velocity.
 *
 * Authors:   Igor Lesik 2015
 * Copyright: (C) Igor Lesik
 *
 * License:
 * Distributed under the Boost Software License, Version 1.0.
 * (See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
 *
 */
module dig.physics.velocity;

import dig.physics.realnum;
import pquantity = dig.physics.quantity;
import length = dig.physics.length;
import time = dig.physics.time;

public struct Velocity
{
    enum quantity = pquantity.Velocity;

public:
    Real value;
    length.Unit lengthUnit;
    time.Unit timeUnit;

public:
    this(Real value, length.Unit lu, time.Unit tu) {
        this.value = value;
        this.lengthUnit = lu;
        this.timeUnit = tu;
    }

public:

    /*Real changeLengthUnit(length.Unit newUnit)
    {
        value *= length.convertUnit(lengthUnit, newUnit);
        lengthUnit = newUnit;
        return value;
    }*/

    Real changeTimeUnit(time.Unit newUnit)
    {
        value /= time.convertUnit(timeUnit, newUnit);
        timeUnit = newUnit;
        return value;
    }

}

Velocity make(length.Length length, time.Time time)
{
    static assert( Velocity.quantity.dim == pquantity.div(length.quantity.dim, time.quantity.dim) );

    return Velocity(length.value/time.value, length.unit, time.unit);
}

