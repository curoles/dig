$(H2 Defining a Function)

$(P
Here is how a function is defined in D with an example of a function called $(B sum)
that adds two numbers and returns the result:
---
// ReturnValue FunctionName( Arguments ) { Statements;   return Expression;}
//     ↓             ↓        ↓     ↓               ↓        ↓
      int           sum   (int a, int b) { writeln("sum"); return a + b; }
---


$(UL
$(LI
First goes function return value type, it can be any type or
special type $(CN void) if a function returns nothing.
)
$(LI
Then comes name of the function.
)
$(LI
Then in parenthesis function arguments follow.
)
$(LI
Then inside the curly brackets body of the function goes.
The body of the function is a list of instructions
that actually implement required functionality.
)
)

)

$(P
Function arguments are organized as a list of variables with
type separated by comma.
Each argument in the list of arguments defines a variable that
comes into existence when function is called, where value of the
variable comes from the caller.
)

$(P
A function normally takes input data in form of arguments
and return some result. To exit from a function and return
a result use keyword $(CN return).
Keyword $(CN return) can be in any place inside a function
and can be use more than once in case there are multiple exits
from the function.
Once execution flow reaches $(CN return) the execution goes back to
the point where this function was called.
If function returns nothing and its return type is $(CN void),
then you just write `return;` without any parameters,
alternativly do not use $(CN return) at all
because compiler will automatically exit at the end of the function.
If a function actually returns something, then the syntax is
`return Expression;` where Expression is a variable or some
expression that could be evaluated, in our example above 
expression is `a + b`.
)

$(P
To call a function you just write its name and then list
values of the arguments inside parenthesis. It you need to save
function return value then assign it to some variable.
Here is an example how our example function $(B sum) could be called:
---
int a = 7;
int b = 3;
int c = sum(a, b);
---
)

$(P
In addition to fixed arguments D allows to define a function with
variable number of arguments. We are not going to use these
so called $(I variadic) functions in this book with an
exception of library function $(B writefln) that has one fixed argument
with the format string and rest are parameters that will be
substituted into the places with '%' inside the format string.
)

