$(H2 Operators)

$(P
$(I Operators) came to programming languages from mathemitics.
They are responsible for calculations and logical operations and
thus fall into category $(I Thing #1: Count) of $(I The 5 Things)
computers do.
)

$(P
It is very natural that programmers adopted operators from mathematic.
The reasons are obvious:
$(UL
$(LI
Safe to say that any program uses mathematical or logical operations.
)
$(LI
People already know them well and recognize immediatly.
Everyone understands that `c = a + b` means that `c` is equal
to sum of `a` and `b`.
)
$(LI
They were carefully chosen by matematisions for centures,
they are short and convinient. So, there is no compelling reason
to invent new operations or new symbols for well known operations.
)
)
)

$(P
List of commonly used operators:
$(UL

$(LI
Arithmetic operators
  $(UL
    $(LI `+` add, `2 + 2` equals 4)
    $(LI `-` subtract)
    $(LI `*` multiply)
    $(LI `/` divide)
  )
)

$(LI
Comparison operators
  $(UL
    $(LI `<`  less, `5 < 7` is true)
    $(LI `>`  greater, `7 > 5` is true)
    $(LI `==` equal, `7 == 7` is true)
    $(LI `!=` not equal, `7 != 5` is true)
    $(LI `<=` less or equal)
    $(LI `>=` greater or equal)
  )
)

$(LI
Boolean logic operators
  $(UL
    $(LI `&&`  AndAnd expression `A && B` evaluates true if A is true and B is true)
    $(LI `||`  OrOr expression `A || B` evaluates true if A is true or B is true)
  )
)

$(LI
Bitwise operators
  $(UL
    $(LI `&`  AND)
    $(LI `|`  OR)
    $(LI `^`  XOR)
  )
)

)
)

$(P
At first glance operators do not look like anything we learned so far.
But conceptually an operator is just a function. For example,
binary operator `+` with two integer operands could be replaced with
a function like this:
---
// ReturnValue FunctionName Operand1 Operand2
      int              add( int a,   int b );
---
)

$(P
So operators are nothing more than just especially short named functions.
)
