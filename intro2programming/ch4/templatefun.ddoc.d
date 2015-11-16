$(H2 Template Function)

$(P
In the previous section we defined function $(CN sum) for types
$(CN int) and $(CN double). But summing two numbers with operator $(CN +)
works for many other types as well.
Shall we write overloaded versions of $(CN sum) for every possible type?
We may, but it would be wrong way to go.
We will copy-paste line `return a + b;` over and over and end
up with many copies of essentially the same code; in case a change
is needed we have to go through all "copies" and fix them. 
)

$(P
The right way is to use $(I template) function that takes
parameters of any type.
$(I Template) function is defined almost the same way with an
exception of an additional list of template types in parenthesis
that goes after function name and before the list of arguments.
For the function $(CN sum) it will look like:
---
// ReturnValue FunctionName ( TemplateTypes ) ( Arguments )  { Body }
//     ↓             ↓              ↓               ↓           ↓
       T            sum           ( T )         (T a, T b)   { ... }
---

In case of function $(CN sum) two parameters $(CN a) and $(CN b)
and the return type should be of the same type $(CN T), so our template function
$(CN sum) has only one template parameter $(CN T).
)

$(P
Below is a short program that demonstrates how our new $(CN sum) function works.
---
import std.stdio;

T sum(T)(T a, T b)
{
    writeln("T is " ~ T.stringof);
    return a + b;
}

void main()
{
    sum(2,3);
    writefln("7.1+3.2=%f", sum(7.1, 3.2));
}
---

Application output:
$(PRE
T is int
T is double
7.1+3.2=10.300000
)

As you can see templated version of $(CN sum) works fine with any type now. 
)

$(P
We can make one step farther and let compiler to figure the return type of
our templated function $(CN sum). For that we simply replace return type
with keyword $(CN auto).
---
auto sum(T)(T a, T b) { return a + b; }
---
)

