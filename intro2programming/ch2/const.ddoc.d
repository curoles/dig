$(H2 Constants)

$(P
We have already met literals that are constant
by their own nature.
But what if we want to use some constant value
many times in our code? Sure, we can type corresponding
literal over and over, but if we will have to change
the value then we have to go through all the code
and change it. Not good. It is actually very typical
source of errors, as people often forget where they
placed hard-coded values or do not even know those
places if they re-work someone else code.
)


$(P
D has a way to define a variable that can't change its value.
Just add quilifier `immutable` at the begining of the
definition:
---
immutable int i = 777;
---
If we try to change $(B i)'s value then compiler will tell us:
---
i = 13;
---
)

$(P
In our Fahrenheit to Celsius converter program we have
variable $(B scaleOffset) that does not change and shall
be constant value. Let us add `immutable` to its definition
to turn it to true constant value that can't be changed no matter
what.
---
// Fahrenheit to Celsius converter. Formula: T(°C) = (T(°F) - 32) × 5/9

import std.stdio; // Use library that will help our program to interract with a user.

float temperatureF = 71; // Storage for temperature in F.
float temperatureC;      // Storage for temperature in C.

immutable int scaleOffset = 32; // F and C scales offset.

// 'main' is first function to be executed by computer, by agreement.
void main()
{
    // Ask user to provide temperature in F.
    writeln("Input temperature in F:");
    readf("%f", &temperatureF);
    
    temperatureC = ((temperatureF - scaleOffset) * 5 ) / 9; // Convertion from F to C.
    
    // water freezes at 0 degrees Celsius.
    auto freezingCold = temperatureC < 0;
	
    // Tell user result of the convertion.
    writefln("Temperature %.2f °F = %.2f °C, freezing? %s",
      temperatureF, temperatureC, freezingCold);
	
    // Print small convertion table around given temperature.
    foreach (offset; -3..4) {
      temperatureC = ((temperatureF + offset - scaleOffset) * 5 ) / 9;
      writefln("%.2f °F : %.2f °C", temperatureF + offset, temperatureC);
    }
}
---
)
