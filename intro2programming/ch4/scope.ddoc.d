$(H2 Scope)

$(P
When you read English text and see definite article $(B the)
in front of a noun, you can figure out what particular
thing the text is talking about. Definite article $(B the) implies
some context or scope for you to use for figuring out specifics.
For example, "the boy" in one paragraph and "the boy" in another
paragraph may point to different boys, but a reader should be
able to figure out which particular boy it is.
It is very practical to use a context because it shortens
a description; without a context all objects have to be described
with all details all the time. Without contextInstead of just saying "the boy"
we would always had to mention universe, galaxy, planet and GPS
coordinates of ... "the boy".
)

$(P
Most programming languages, inluding D, define $(I scope) or $(I visibility domain)
for variables, functions and etc. It would be very inconvinient to have
single global visibility domain, you would not be able to reuse any name,
all names would have to be unique.
Just imagine situation when you:
$(UL
$(LI can't use any name twice,)
$(LI have to memorize ALL names in a program.)
)
)

$(P
Every D file defines a $(I module). Everything defined inside a file
or module automatically takes place in the context of the module and
its $(I namespace). For example, you can define function called $(CN fun)
in module A and module B, they will be two absolutly different functions.
In case you need to use both of them at the same time, then you have to
add the namespace prefix to the name $(CN fun), that is `A.fun` and `B.fun`.
)

$(P
Variable defined inside a function has context of the function,
it gets into existence when the function is called
and vanish when the function exists.
)

$(P
All execution flow control structure define $(I blocks) of instructions,
variables defined in such blocks live in the context of the block.
---
if (Condition) {Block} else {Block}
while (Condition) {Block}
for/foreach (...) {Block}
---
You can use a name for new variable inside a block even if this name
is already used in the outer context, compiler will use variable from
most inner context.
---
int fun()
{
    int a; // a #1
    if (...)
    {
        int a; // a #2
        a = 7; // compiler understands that you mean a #2
    }
}
---
)

$(P
Not only variables but pretty much everything has cirtain context
and visibility: modules inside other modules, functions, custom types and so on.
)

$(P
Now that we know more about different scopes or visibility domains
let us have a critical look at the last version of the
Fahrenheit to Celsius convertion program.
As a general rule of thumb, it is recommended to define variables
when they actually used and not sooner. Variable (or rather constant)
$(CN scaleOffset) is used only inside function $(CN F2C), so it
makes sense to move it inside the function.
In addition we will turn 5/9 to named constant $(CN scaleFactor).
Variables $(CN temperatureF) and $(CN temperatureC) are used inside
function $(CN main), let us move them too.
---
// Fahrenheit to Celsius converter.
// Formula: T(°C) = (T(°F) - 32) × 5/9
import std.stdio;


// °F to °C convertion function.
//
float F2C(float temperatureF)
{
    enum float scaleOffset = 32; // F and C scales offset.
    enum float scaleFactor = 5.0/9.0;

    return (temperatureF - scaleOffset) * scaleFactor;
}

// 'main' is first function to be executed by computer, by agreement.
void main()
{
    float temperatureF = 71; // Storage for temperature in F.

    // Ask user to provide temperature in F.
    writeln("Input temperature in F:");
    readf("%f", &temperatureF);
    
    float temperatureC = F2C(temperatureF); // Convertion from F to C.
    
    // water freezes at 0 degrees Celsius.
    auto freezingCold = temperatureC < 0;
	
    // Tell user result of the convertion.
    writefln("Temperature %.2f °F = %.2f °C, freezing? %s",
        temperatureF, temperatureC, freezingCold);
	
    // Print small convertion table around given temperature.
    foreach (offset; -3..4) {
        temperatureC = F2C(temperatureF + offset);
        writefln("%.2f °F : %.2f °C", temperatureF + offset, temperatureC);
    }
}
---
)

$(P
Person with with(john) 
)

$(P
scope exit,success,failure
)

