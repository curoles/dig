$(H2 Type Auto Deducing)

$(P
Computer languages have different approach to
how important it is to explicitly specify type of a variable.

Some languages go to the extream and
do not even give a programmer a way to specify
types, those languages figure out types themself.

While it can be conviniet for a programmer not to bother with types
while typing a code, especially when the code is supposed to work
with any type that might occur at run time,
yet there are situations when programmer would like to know
what kind of types some code is dealing with
and if this information
is not available, then it makes reasoning about the code
difficult in some cases.
)

$(P
D does not go to that extrem.
It allows programmer to specify variable's type but
it also can automatically deduce variable's type,
in case programmer wants it.
In many cases it actually makes sense to NOT assume a particular
type and let compiler to figure out it,
it allows for writing generic code that does not
depend on a particular type name.
)

$(P
In case you want compiler to figure out type in your behalf
replace actual type with keyword `auto`.

Let us consider an example.
---
import std.stdio;

auto i = 5;
auto f = 3.14;

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
)
