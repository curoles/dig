$(H2 First program)

$(P
Finally we know D language syntax well enough
to be able to write our first program.

It will be a program that converts temperature in Fahrenheit to Celsius.
We tell to our program a temperature in Fahrenheit as a number,
in return the program prints out corresponding number in degrees Celsius.
Additionaly the program says is the temperature below water freezing point
and shows small °F to °C conversion table around the point.
)

$(P
Do not panic if not everything in our first program is clear to you.
Keep reading and thinking and eventually it all will come together.

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
    writefln("Temperature %d °F = %s Celsius, freezing? %s",
      temperatureF, temperatureC, freezingCold);
	
    // Print small convertion table around given temperature.
    foreach (offset; -3..4) {
      temperatureC = ((temperatureF + offset - scaleOffset) * 5 ) / 9;
      writefln("%d °F : %d °C", temperatureF + offset, temperatureC);
    }
}
---

Application input:
$(PRE
80
)

Application output:
$(PRE
Input temperature in F:
Temperature 80 °F = 26 Celsius, freezing? false
77 °F : 25 °C
78 °F : 25 °C
79 °F : 26 °C
80 °F : 26 °C
81 °F : 27 °C
82 °F : 27 °C
83 °F : 28 °C
)

)

$(P
To run this program:
$(UL
$(LI
Visit link $(LINK http://dpaste.dzfl.pl/0898fbbbc5e6)
)
$(LI
You will see the program's code and its output right away.
If you want to run it yourself then click $(B Fork) in panel $(B Actions).
)
$(LI
The view changes and now you can see button $(B Run), press on it.
Program is going to be compiled and then run.
)
$(LI
On the $(B Input/Output) panel find tab $(B Input) and change input
value for temperature in Fahrenheit to something else.
Press button $(B Run) again to see new output.
)
)
)

$(P
Let us analyze out first program line by line.
In our analisys we also consider how our code corresponds to
$(I The 5 Things Computer Does):

$(OL
$(LI Store data in memory with a tag. Find in memory by the tag.)
$(LI Count numbers.)
$(LI Choose between options and branch executiion.)
$(LI Stay in a loop and repeat.)
$(LI Get user input from keyboard. Print results out.)
)
)

$(P
Line `// Fahrenheit to Celsius converter. Formula: T(°C) = (T(°F) - 32) × 5/9`
is a comment about the program, what the program basically does.
)

$(P
Line `import std.stdio;` tells that we would like to use library called
$(B std.stdio), this library has functions that print text to the terminal
window and also get user's input (Thing #5).
)

$(P
Line `int temperatureF = 71;` allocates storage for integral variable
that holds temperature in °F, initialize value with 71 (Thing #1).
)
