$(H2 Literals)

$(P
Literals are those numbers and strings that you see in a code,
for example:
---
int luckyNumber = 777; // 777 is integer literal.

string greetings = "Hello!"; // "Hello" is string literal.

float pi = 3.14; // 3.14 is floating point number literal.
---
)

$(P
As we have already discussed, a computer program is a list of instructions.
How do literals fit into "list of instructions"?
Literals are data, not instructions and thus compiler might want
to allocate storage for a literal; but in many cases a literal
becomes integral part of the machine instructions and no storage
is allocated for it.
)

$(P
$(B Advanced.)
You can create your own literals in D language.
Appendix ? shows an example of $(B daytime) literal that allows
to express time of a day in seconds as a string "h:m:s".
)

$(P
Any literal is constant by definition. If you see number `777` in a program text,
then it means nothing more and nothing less than number 777, number 777 can't be
any other number by definition. But most of real world programs and algorithms
require more than just constant values, they need data storage called $(I variables)
that might hold any value and change during run time. And that is what will
be our next topic.
)
