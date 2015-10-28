$(H2 Type Auto Deducing)

$(P
Different computer languages have different approach to
how important it is to explicitly specify type of a variable.

Some languages go to the extreme and
do not even give a programmer a way to specify
types, those languages figure out types on their own.

While it can be convenient for a programmer not to bother with types
while typing a code, especially when the code is supposed to work
with any type that might occur at run time,
yet there are situations when programmer would like to know types
of variables and etc.
If type information
is not available, then it makes reasoning about the code
difficult in some cases.
)

$(P
D does not go to that extreme.
It allows programmer to specify variable's type but
it also can automatically deduce variable's type,
in case programmer wants it.
In many cases it actually makes sense to NOT assume a particular
type and let compiler to figure out it,
it allows for writing generic code that does not
depend on a particular type.
)

$(P
In case you want compiler to figure out type in your behalf
replace actual type with keyword %(B auto).

Let us consider an example.
---
import std.stdio;

auto i = 5; // 5 is integer literal, so variable i is integer
auto f = 3.14; // 3.14 is floating number literal, so f is of type double

void main()
{
  writefln("i is %s", typeid(typeof(i)));
  writefln("f is %s", typeid(typeof(f)));
}
---

Application output:
$(PRE
i is int
f is double
)
)

$(P
In our Fahrenheit to Celsius converter program we can rewrite
following code:
---
if (temperatureC < 0) { // water freezes at 0 degrees Celsius.
  freezingCold = true;
}
else {
  freezingCold = false;
}
---
To much shorter code that also uses `auto`:
---
auto freezingCold = temperatureC < 0;
---

Expression `temperatureC < 0` evaluates to $(B true) or $(B false) of
type $(B bool), so variable $(B freezingCold) is of type $(B bool).
)
