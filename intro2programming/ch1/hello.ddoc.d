$(H2 "The 5 Things computer does" program)

$(P
Finally we know D language syntax well enough
to be able to write our first program.

TODO Fa to C.INSTEAD!!!!

It will be a program that converts hours to minutes,
we tell it time as a number of hours and it returns us
the same time as the number of minutes.
)

$(P
In the comments we will annotate lines of code with what $(I Thing)
they do in regard to $(I The 5 Things), let us remind them:
$(OL
$(LI Count numbers.)
$(LI Choose between options and branch executiion.)
$(LI Stay in a loop and repeat.)
$(LI Store data in memory with a tag. Find in memory by the tag.)
$(LI Get user input from keyboard. Print results out.)
)
)

$(P
---
// Fahrenheit to Celsius converter. Formula: T(°C) = (T(°F) - 32) × 5/9

import std.stdio; // Use library that will help our program to interract with a user.

int temperatureF = 71; // Storage for temperature in F.
int temperatureC;      // Storage for temperature in C.
int scaleOffset = 32;  // Storage for F and C scales offset.
bool freezingCold;     // Variable that tells that it is freezing temperature.


// 'main' is first function to be executed by computer, by agreement.
void main()
{
    // Ask user to provide temperature in F.
    writeln("Input temperature in F:");
    readf("%d", &temperatureF);
    
    temperatureC = ((temperatureF - scaleOffset) * 5 ) / 9; // Convertion from F to C.
    
    if (temperatureC < 0) { // water freezes at 0 degrees Celsius.
      freezingCold = true;
    }
    else {
      freezingCold = false;
    }
	
    // Tell user result of the convertion.
    writefln("Temperature %d F = %s Celsius, freezing? %s",
      temperatureF, temperatureC, freezingCold);
	
    // Print small convertion table around given temperature.
    foreach (offset; -3..4) {
      temperatureC = ((temperatureF + offset - scaleOffset) * 5 ) / 9;
      writefln("%d F : %d C", temperatureF + offset, temperatureC);
    }
}
---
)

$(P
To run this program:
$(UL
$(LI
Visit link $(LINK http://dpaste.dzfl.pl/0898fbbbc5e6)
)
$(LI
You will see program's code and output right away.
If you want to run it yourself then click $(B Fork) in panel $(B Actions).
)
$(LI
The view changes and now you can see button $(B Run), press on it.
Program is going to be compiled and then run.
)
$(LI
On the Input/Output panel find tab $(B Input) and change input
value for temperature in Fahrenheit. Press button $(B Run) again to see
new output.
)
)
)

$(P
TODO explain line by line
)
