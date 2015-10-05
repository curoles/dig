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

$(P
When we defined variable `scaleOffset` as `immutable` we told that
no matter what its value can't change. But even though its value can not
be changed this variable still has a storage for its value in computer memory.
Literals do not have to have a storage, but variables do.
In D and and in many other languages you can get a $(I reference)
to a variable that is essentially the address of where the variable is
stored in the memory.
Why would we need it?
Imagine that you have made a humangous custom type
that takes a lot of memory to store. Then you write some functions
that have this type as an argument and figure out that it implies
copying big chunks of memory.
To avoid this copying every time a function is called you can send
variable by its reference instead of by value.
Keyword `ref` is used ... 
)

$(P
When you send a variable by value the receiving function operates
with a copy of the variable. If you send it by reference then
the function operates with the variable itself; in this case
you may need to protect the variable from any changes, for
that put keyword `const` in front of the argument.
---
ReturnType

---
)

$(P
---
immutable int scaleOffset = 32;
---
enum int scaleOffset = 32;

)
