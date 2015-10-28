$(H2 Float)

$(P
Basic type $(B float) is for a programmer to operate with what
in math called $(I real) numbers.
There is another similar type called $(B double), it is bigger
than $(B float) (more storage space) and therefore provides better precision.
Since big percentage of all
computer programs is engineering programs that do calculations,
let us have a closer look at these types.
)

$(P
But before we continue discussing floating point types,
let us make a small step sideway to make acquaintance with very useful
D language keyword $(B assert). $(B assert) is a special
function that might abort execution of a program
depending on its argument. If the argument evaluates to true
then the execution continues, otherwise it gets aborted.

From now on we are going to use $(B assert) a lot in our code,
it is more convenient than
using $(B if-else) and printing information to terminal.
)

$(P
Floating point literals are real numbers and usually have
decimal point. If you do not use decimal point then put letter $(B F)
after the last digit of the literal to specify that you want it to be
treated as real not integral number. When a number is too big
or too small and has too many zeros before or after decimal point,
or if you just prefer to use scientific notation,
add letter $(B e) and integral power number to the end of the literal.
$(B e) stays for $(B e)xponent.

Below is a small snippet
of D code that demonstrates floating point literals and variables.
---
void main()
{
  // By default type double with higher precision is assumed for the floating literal.
  static assert (is(typeof(3.14) == double));

  // Letter F in 3.14F tells that we want this number to be float.
  static assert (is(typeof(3.14F) == float));

  // Literal number is integer if no decimal point or letter F is present.
  static assert (is(typeof(3) == int));

  // No decimal point, but letter F is present.
  static assert (is(typeof(3F) == float));

  // Variable pi initialized with 3.14.
  float pi = 3.14;
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
the number gets rounded to integer and we loose precision.
Let us fix it by using type $(B float) instead of type $(B int).
)

$(P
Link to the code $(LINK http://dpaste.dzfl.pl/87849672359e).
---
// Fahrenheit to Celsius converter. Formula: T(°C) = (T(°F) - 32) × 5/9

// Use library that helps our program to interact with a user.
import std.stdio;

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
    
    temperatureC = ((temperatureF - scaleOffset) * 5 ) / 9; // Conversion from F to C.
    
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
