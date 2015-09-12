$(H2 Type Auto Deducing)

$(P
Computer languages have different approach to
how important it is to explicitly specify type of a variable.
Some languages go to the extream and
do not even give a programmer a way to specify
types, those languages figure out types themself.
It can be conviniet for a programmer not to bother with types,
but there are situations when programmer would like to know
what kind of types some code is dealing with and this information
is not available, it makes reasoning about the code
difficult in some cases.
)

$(P
D does not go to that extrem.
It allows programmer to specify variable's type but
it also can automatically deduce variable's type,
in case programmer wants it.
In many cases it actually makes sense to NOT assume a particular
type and let compiler to figure out it,
it makes more generic code.
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
