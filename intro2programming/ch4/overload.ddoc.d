$(H2 Function Overloading)

$(P
Let us have one more look on the function $(B sum).
---
int sum(int a, int b)
{
    return a + b;
}
---
It operates with integer types and naturally returns integer type.
But a function that sums two real numbers of type `float` could be usefull too.
We can use the same function name with different types of arguments
or different function $(I signature). It is called function $(I overloading).
Compiler will know what version of an overloaded function to use
depending on the actual argument types. 
)


$(P
Let us define two functions with the same name but different signatures.
Inside each function we will print what type of numbers it operates with,
integet or real.
---
import std.stdio;

int sum(int a, int b)
{
    writefln("Integer sum of %d and %d", a, b);
    return a + b;
}

float sum(float a, float b)
{
    writefln("Float sum of %f and %f", a, b);
    return a + b;
}

void main()
{
    writefln("7+3=%d, 7.1+3.2=%f", sum(7, 3), sum(7.1, 3.2));
}
---

Application output:
$(PRE
Integer sum of 7 and 3
Float sum of 7.100000 and 3.200000
7+3=10, 7.1+3.2=10.300000
)

As promised, compiler used `sum(int a, int b)` for `sum(7+3)` call
and `sum(float a, float b)` for `sum(7.1 + 3.2)` call.
)

$(P
Function $(B main) is an another example of an $(I overloaded) function.
It can have no arguments at all or an argument of type `string[]`.
Also its return type can be `void` or `int`.
This makes it easy to use function $(B main).
If your program does not
expect any arguments from the command line then you can use `main()`.
If your program can process parameters from the command line,
then use `main(string[] args)`.
)

$(P
Some applications or programs have $(I Graphic User Interface)
and some converse with user using words printed to user's terminal
window. Later types of programs when launched from a terminal
window may accept a list of parameters delimited with space symbol,
these parameters are usually called $(I command line parameters).

To get the taste of it, you can play with command line parameters
using this simple program:
---
import std.stdio;

void main(string[] args)
{
    writefln("Number of arguments is %d", args.length);

    foreach (index, arg; args) {
        writefln("argument #%d is %s", index, arg);
    }
}
---
Go to ... In $(B Input) tab find the input field for your command line
arguments and type "a b c d". Click button $(B Run).

Application output:
$(PRE
Number of arguments is 5
argument #0 is ./f726
argument #1 is a
argument #2 is b
argument #3 is c
argument #4 is d
)

)
