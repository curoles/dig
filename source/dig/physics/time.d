/**
 * Time.
 *
 * Authors:   Igor Lesik 2015
 * Copyright: (C) Igor Lesik
 *
 * License:
 * Distributed under the Boost Software License, Version 1.0.
 * (See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
 *
 */
module dig.physics.time;

import dig.physics.realnum;
import dig.physics.quantity;

enum Unit : ubyte {
    sec,  // second
    min,  // 60 sec
    hour, // 60 min
    day   // 24h
}

pure Real min2sec(Real min) { return min * 60; }
pure Real hour2min(Real hour) { return hour * 60; }
pure Real day2hour(Real day) { return day * 24; }
pure Real hour2sec(Real hour) { return hour.hour2min.min2sec; }
pure Real day2sec(Real day) { return day.day2hour.hour2sec; }

