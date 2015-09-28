/**
 * Temperature.
 *
 * Authors:   Igor Lesik 2015
 * Copyright: (C) Igor Lesik
 *
 * License:
 * Distributed under the Boost Software License, Version 1.0.
 * (See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
 *
 * See_Also:
 * https://en.wikipedia.org/wiki/List_of_physical_quantities
 */
module dig.physics.temperature;

import dig.physics.realnum;
import dig.physics.quantity;

enum Real KCscaleOffset = 273.15;
enum Real FCscaleOffset = 32;

pure
Real FtoC(in Real temperatureF)
{
    return ((temperatureF - FCscaleOffset)*5)/9;
}

pure
Real CtoF(in Real temperatureC)
{
    return ((temperatureC + FCscaleOffset)*9)/5;
}

pure
Real KtoC(in Real temperatureK)
{
    return temperatureK - KCscaleOffset;
}

pure
Real CtoK(in Real temperatureC)
{
    return temperatureC + KCscaleOffset;
}

pure
Real FtoK(in Real temperatureF)
{
    return temperatureF.FtoC.CtoK;
}

pure
Real KtoF(in Real temperatureK)
{
    return temperatureK.KtoC.CtoF;
}

enum Unit : ubyte {K, C, F}

public struct Temperature
{
    enum quantity = dig.physics.quantity.Temperature;

public:
    Real value;
    Unit unit;

public:
    @property Real K(Real tempK) { unit = Unit.K; return value = tempK; }
    @property Real C(Real tempC) { unit = Unit.C; return value = tempC; }
    @property Real F(Real tempF) { unit = Unit.F; return value = tempF; }


    @property Real K() { final switch (unit) {
        case Unit.K: return value;
        case Unit.C: return CtoK(value);
        case Unit.F: return FtoK(value);
    }}

    @property Real C() { final switch (unit) {
        case Unit.K: return KtoC(value);
        case Unit.C: return value;
        case Unit.F: return FtoC(value);
    }}

    @property Real F() { final switch (unit) {
        case Unit.K: return KtoF(value);
        case Unit.C: return CtoF(value);
        case Unit.F: return value;
    }}

    @property Real convertToK() { return K(K); }
    @property Real convertToC() { return C(C); }
    @property Real convertToF() { return F(F); }
}

unittest
{
    //static assert (Temperature.sizeof == Real.sizeof + Unit.sizeof);
}
