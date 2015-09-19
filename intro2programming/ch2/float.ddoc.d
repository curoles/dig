$(H2 Float)

$(P
Basic type $(B float) is for a programmer to operate with what
in math called $(I real) numbers.
There is another similar type called $(B double), it is bigger
than $(B float) (more storage space) and therefore provides better precision.
Since big procentage of all
computer programs is engineering programs that do calculations,
let us have a closer look at these types.
)

$(P
But before we continue discussing floating point types,
let us make a small step sideway to meet very usefull
D language keyword $(B assert). $(B assert) is special
function that might abort execution of a program
depending on its argument, if the argument evaluates to true
then execution continues, otherwise it gets aborted.

From now on we are going to use $(B assert) a lot in our code,
it is more convinient than
using $(B if-else) and printing information to terminal.
)

$(P
Floating point literals are real numbers and usually have
decimal point. If you do not use decimal point then put letter $(B F)
after the last digit of the literal. When a number is too big
or too small, or if you just prefer to use scintific notation,
add letter $(B e) and integral power number to the end of the literal,
$(B e) stays for exponent.

Below is a small snippet
of D code that demostrates floating point literals and variables.
---
void main()
{
  static assert (is(typeof(3.14) == double)); // By default type double with higher precision is used.
  static assert (is(typeof(3.14F) == float)); // Letter F in 3.14F tells that we want this number to be float.
  static assert (is(typeof(3) == int));       // Number is integer if no decimal point or letter F.
  static assert (is(typeof(3F) == float));    // No decimal point, but letter F is present.
  float pi = 3.14;                            // Variable pi initialized with 3.14.
  static assert (is(typeof(pi) == float));

  float anotherPi = 0.0314e2;   // Means 0.0314*10^2
  float thirdPi = 0.0314*10^^2; // In D operator ^^ stays for power
  assert (pi == anotherPi);
  assert (anotherPi == thirdPi);
}
---
)

$(P
Some readers may have noticed that our first programs that converts temperature
from degrees Fahrenheit to Celsius has problems. When integer variable `temperatureF`
gets multiplied by (5/9) the result is rational number, but when that
rational numbers is assigned to integer variable `temperatureC`
the number gets rounded and we loose precision.
Let us fix it by using type $(B float) instead of type $(B int).
)

$(P
Link to the code $(LINK http://dpaste.dzfl.pl/87849672359e).
---
// Fahrenheit to Celsius converter. Formula: T(°C) = (T(°F) - 32) × 5/9

import std.stdio; // Use library that will help our program to interract with a user.

float temperatureF = 71; // Storage for temperature in F.
float temperatureC;      // Storage for temperature in C.
int scaleOffset = 32;    // Storage for F and C scales offset.
bool freezingCold;       // Variable that tells that it is freezing temperature.


// 'main' is first function to be executed by computer, by agreement.
void main()
{
    // Ask user to provide temperature in F.
    writeln("Input temperature in F:");
    readf("%f", &temperatureF);
    
    temperatureC = ((temperatureF - scaleOffset) * 5 ) / 9; // Convertion from F to C.
    
    if (temperatureC < 0) { // water freezes at 0 degrees Celsius.
      freezingCold = true;
    }
    else {
      freezingCold = false;
    }
	
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

Application output:
$(PRE
Temperature 80.00 °F = 26.67 °C, freezing? false
77.00 °F : 25.00 °C
78.00 °F : 25.56 °C
79.00 °F : 26.11 °C
80.00 °F : 26.67 °C
81.00 °F : 27.22 °C
82.00 °F : 27.78 °C
83.00 °F : 28.33 °C
)

)

$(P
Improvement compare to the "integer" version is well seen,
precision of the results is higher.
)
