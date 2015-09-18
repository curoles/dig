$(H2 Builtin Types)

$(P
People learn basic things when they are babies,
they learn numbers and arithmetic when they still little.
These basic fundamental concepts form the foundation
for learning other new things later on in the life.
Similarly, a programming language provides basic types
that form the foundation; a programmer can use basic types
and create new types based on the basic types.
)

$(P
A computer language has builtin types for basic
abstractions: numbers, characters, strings and boolean values.
List of most commonly used builtin $(I basic) types in D:
$(UL
$(LI
`bool` - boolean value, can be `true` or `false`.
)
$(LI
`int` - signed 32 bits integer number.
)
$(LI
`uint` - unsigned 32 bits integer number.
)
$(LI
`float` - 32 bit floating point number.
)
$(LI
`char` - unsigned 8 bit (UTF-8) character.
)
$(LI
`wchar` - unsigned 16 bit (UTF-16) character.
)
$(LI
`string` - an array of characters.
)
)

Complete list of D's basic types at $(LINK http://dlang.org/type.html).
)

$(P
You might have noticed that for some aforementioned types
their $(I size) was specified too. When a variable of a certain
type is created, some chunk of a computer memory is allocated
to hold its value; the size of that chunk is usually fixed
for practical reasons and called $(I type's size).
D language tries to be fast and efficient
when operations are performed with basic types, but as a tradeoff
it relies on a programmer's understanding that a value of a variable
in some cases has limits.

For example, type `uint` has size 32 bits
and therefore a variable of this type can have value from 0 to (2$(POW 32) - 1).
2$(POW 32) is about 4*10$(POW 9), it is a big number, but could be
not big enough for some applications and then the programmer
should use `ulong` type that is 64 bits long. 
)

$(P
If you do not know what $(I bit) and $(I byte) are, then we will
try to explain it here quickly, but would recommend to you to read a book
by Charles Petzold called
"Code. The Hidden Language of Computer Hardware and Software"
that was written for kids.

Everything inside computer's Processing Unit (computer's brain)
is digital and made of simple gates that could be either open
or closed. It means that one gate can store 2 values: 0 and 1,
or one $(I bit) of information.
One $(I byte) is information size of 8 bits.
If you count how many combinations of 0's and 1's 8 bits
can have then you get 2$(POW 8) different combinations.
)

$(P
D language can help a programmer to figure out type of a variable
and its size in $(I run time) (when program runs) as well
as in $(I compile time) (when program's code is analyzed and compiled).

Let us write a short program that prints out type name and size
for variables of few basic types.
)

$(P
---
import std.stdio;

void main()
{
  bool bo = true;
  int i;
  byte b;
  ulong l;

  writefln("bo's type name is %s, size=%d bytes",
    typeid(typeof(bo)), bo.sizeof);
  writefln("b's type name is %s, size=%d bytes",
    typeid(typeof(b)), b.sizeof);
  writefln("i's type name is %s, size=%d bytes, min=%d max=%d",
    typeid(typeof(i)), i.sizeof, i.min, i.max);
  writefln("l's type name is %s, size=%d bytes, min=%d max=%d",
    typeid(typeof(l)), l.sizeof, l.min, l.max);
}
---
)

$(P
Application output:
$(PRE
bo's type name is bool, size=1 bytes
b's type name is byte, size=1 bytes
i's type name is int, size=4 bytes, min=-2147483648 max=2147483647
l's type name is ulong, size=8 bytes, min=0 max=18446744073709551615
)
)

$(P
Let us see what this simple program does.
First it imports library $(B std.stdio) where functions like $(B writefln)
are defined.
Then we define function $(B main) that always has to be defined, simply because function with
this name must exist in any executable D program.
After that we define variables of several different types.
Next, for each variable we call function writefln to print out information
about the variable. That information is obtained by means of calling
either special functions, for example `typeof(i)`, or property method of the object,
for example `i.sizeof`.
)

$(P
Special function $(B typeof) takes a variable as an argument
and returns an object that has type information of that variable.
Special function $(B typeid) takes what function typeof returns
and converts it to a string that is type's name, so we can print it out.
)

$(P
In D language, any variable has property $(B sizeof), to get storage size
of a variable call this propery like this `variable.sizeof`.
Variables of numeric types have $(B min/max) property;
we use these properties in the printing information
about variables `int i` and `ulong l`.
)

$(P
You have already seen functions $(B writeln) and $(B writefln) before.
Function $(B writeln) takes one argument of type string and outputs
that string to the terminal.
Function $(B writefln) is similar, but it also helps to format the output string
as we want it. Its first argument is format string that may have special
combinations of characters inside it, like `%d` or `%s`. Each of such special
combination will be substituted with value that comes from the following arguments
based on the position.
It is easy to show how it works:
---
writefln("i's type name is %s, size=%d bytes, min=%d max=%d",
//                         |         |             |      |
              typeid(typeof(i)), i.sizeof,      i.min, i.max);
// position                1         2             3      4
---
)
