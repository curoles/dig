$(H2 Defining a Function)

$(P
Here is how a function is defined in D:
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
Then inside the curly brackets body of the function,
that is what code statements implementing what the function does.
)
)

)

$(P
varargs and writefln()
)

$(P
rewrite f2c making convertion function
)


