/**
 * Measurable physical quantities.
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
module dig.physics.quantity;

import std.typecons;


enum QuantityId : uint
{
    Length,
    Time,
    Mass,
    Temperature,

    Area
}

alias Quantity = Tuple!(QuantityId, "id", int, "L", int, "T", int, "M", int, "Temp");

enum Quantity Length = tuple(QuantityId.Length, 1, 0, 0, 0);
enum Quantity Area   = tuple(QuantityId.Area,   2, 0, 0, 0);

unittest
{
    static assert (Length.id == QuantityId.Length);
}

enum Quantity Temperature  = tuple(QuantityId.Temperature, 0, 0, 0, 1);

unittest
{
    static assert (Temperature.id == QuantityId.Temperature);
    static assert (Temperature.Temp == 1 && Temperature.L == 0);
}

