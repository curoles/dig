$(H2 Defining a Function)

$(P
Here is how a function is defined in D with an example of a function called sum
that adds two numbers and return the result:
---
// ReturnValue FunctionName( Arguments ) { Statements; }
//     ↓             ↓        ↓     ↓               ↓
      int           sum   (int a, int b) { return a + b; }
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
arguments
)

$(P
return
)

$(P
calling function
)

$(P
varargs and writefln()
)

$(P
rewrite f2c making convertion function
)


