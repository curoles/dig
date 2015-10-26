$(H2 Comments)

$(P
A program is made to be eventually executed by a computer.
So most of what is written in a program is going to be interpreted
and executed. But not everything, programmer might have notes
for himself, they are called $(I comments).
)

$(P
It is important to understand that programs usually live
quite a long life. Programs gets modified and improved many
times before they come out of use. To facilitate reading
and re-writing programmers use comments. Comments are usually
English text with short notes explaining things that are
not obvious from reading the code itself.
)

$(P
You might ask why program code can not be self-explanatory.
The reasons are:
$(UL
$(LI
Understanding what each instruction in the code
does not explain what the program as whole is trying to achieve.
In other words, individual instructions do not explain
the idea behind the algorithm.
)
$(LI
Most of the coding styles (especially imperative) are good for
solving problems and achieving results, and not necessary for
showing the "big" ideas behind the design or algorithm
or why things done this way.
)
$(LI
Large-scale software projects have many components that
are designed to work together. Sometimes it could be very hard
to deduce the design by looking on how components are
using each other; well placed comments can save time.
)
)
)

$(P
There are 2 ways in D to make a comment:
$(OL
$(LI
Everything that starts with `//` to the end of the line is a comment.
)
$(LI
Everything between `/*` and `*/` is a comment.
)
)
)

$(P
Examples:
---
int luckyNumber = 777; // This is single line comment about lucky number :)

/* This is
     multiple lines
       comment block.
*/
---
)

$(P
This choice of symbols to mark where comments are in code is not accidental.
In D and in many other languages, symbol `/` is used as division operator
and `*` as multiplication.
Both operators are binary, that is they require 2 operands: `a*b` and `a/b`.
It is not possible to write a valid expression where 2 divisions follow
each other or when division and multiplication stay together.
)

$(P
Good comments have a great value, but comments should not explain trivial
points of your program. The best advise for making an understandable code
is to use good names.

We are going to learn about variables, their type and also about functions;
we can name them whatever we like.
But if we give meaningless names to things in our code
then our code becomes unreadable, that is the code that is difficult to understand,
hard to figure out what is going on and what is what.

The recommendation for good naming is simple:
call types and variables by what they actually are
and functions by what they do.
)
