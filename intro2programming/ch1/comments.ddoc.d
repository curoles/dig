$(H2 Comments)

$(P
A program is made to be eventually executed by a computer.
So most of what is written in a program is going to be interpreted
and executed. But not everything, programmer might have notes
for himself, they are called $(I comments).
)

$(P
It is important to understand that programs usually live
quite long life. Programs gets modified and improved many
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
Understanding what each instruction in the code does
does not explain what the program as whole is trying to achive.
In other words, individual instrctions do not explain
the idea behind the algorithm.
)
$(LI
Most of the coding styles (especially imperative) are good for
solving problems and achiving results, and not neccessary for
showing the "big" ideas behind the design or algorithm
or why things done this way.
)
$(LI
Large-scale software project have many components that
are designed to work together. Sometimes it could be very hard
to deduce the design by looking on how components are
using each other; well placed comments can save time.
)
)
)

2 divs in row
div then mult

---
int luckyNumber = 777; // This is single line comment about lucky number :)

/* This is
     multiple lines
       comment block.
*/
---
