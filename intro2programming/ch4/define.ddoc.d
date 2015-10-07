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
special type `void` if a function returns nothing.
)
$(LI
Then comes name of the function.
)
$(LI
Then in parenthesis go function arguments.
)
$(LI
Then inside the curly brackets body of the function.
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
result use keyword `return`.
Keyword `return` can be in any place inside a function,
once execution flow reaches it the execution goes back to
the point where this function was called.
If function returns nothing and its return type is `void`,
then you just write `return;` or do not use `return` at all
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
int c = sumOfab(a, b);
---
)

$(P
In addition to fixed arguments D allows to define a function with
variable number of arguments. We are not going to use
so called $(I variadic) functions with an
exception of function $(B writefln) that has one fixed argument
with the format string and rest are parameters that will be
substituted into the places with '%' inside the format string.
)

