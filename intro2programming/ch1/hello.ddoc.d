$(H2 First program)

$(P
Finally, we know D language syntax well enough
to be able to write our first program.

It will be a program that converts temperature in Fahrenheit to Celsius.
We tell to our program a temperature in Fahrenheit as a number,
in return the program prints out corresponding number in degrees Celsius.
Additionally, the program says if the temperature is below water freezing point
and it shows small °F to °C conversion table around the point of interest.
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
The view changes and now you can see the $(B Run) button, press on it.
The program is going to be compiled and then ran.
)
$(LI
On the $(B Input/Output) panel find $(B Input) tab and change the input
value for temperature in Fahrenheit to something else.
Press the $(B Run) button again to see new output.
)
)
)

$(P
Let us analyze out first program line by line.
In our analisys we also consider how our code relates to
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
that holds temperature in °F, initializes value with 71. (Thing #1).
)

$(P
`int temperatureC;` declares variable that holds temperature in C. (Thing #1).
)

$(P
`int scaleOffset = 32;` declares variable that holds value of the zero point
offset between Fahrenheit and Celsius temperature scales. (Thing #1).
)

$(P
`bool freezingCold;` declares variable that holds true or false status
of water freezing condition. (Thing #1).
)

$(P
`void main() { ... }` defines the function that will be called first when we
run our program, by an agreement its name must be "main".
This function returns `void` which means "nothing".
The parenthesis are empty because there are no parameters to the function.
The code or body of the function must be surrounded by `{` and `}`.
)

$(P
`writeln("Input temperature in F:");` prints out text asking user for input. (Thing #5).
)

$(P
`readf("%d", &temperatureF);` read user input and store it into a variable `temperatureF`.
(Thing #5).
)

$(P
`temperatureC = ((temperatureF - scaleOffset) * 5 ) / 9;` reads values of variables
`temperatureF` and `scaleOffset`, uses literals `5` and `9`,
uses operators `-`,`*` and `/` to calculate temperature in C and stores that
value into variable `temperatureC`. 
(Thing #1 and #2).
)

$(P
`if (temperatureC < 0) {freezingCold = true;}` check condition `temperatureC < 0` using
keyword `if`.
If temperature less than 0 then we assing true to variable `freezingCold`,
otherwise we assign false to it with `else {freezingCold = false;}`.
(Thing #3).
)

$(P
`writefln("Temperature %d °F = %s Celsius, freezing? %s", ...);` prints out temperature
in F and C, also if water is in freezing condition.
(Thing #5).
)
 
$(P
`foreach (offset; -3..4) { /*RepeatThisBlock*/ }` says that we want to
go through each number in range [-3,4$(RPAREN), that is -3,-2,-1,0,1,2,3,
on each iteration assign that number to a variable called `offset`,
and execute block of instructions between curly brackets `{` and `}`.
(Thing #4).
)


