$(H2 Named Variables)

$(P
Remember $(I The 5 Things) computers do?
$(I Thing #1) is
"Store data in memory with a tag."
To do exactly that programs have $(I variables).
A $(I variable) has a name and some value assigned to it that might
change in time.
We use name of a variable as its tag by which we refer to variable.
Since we can assign any value to a variable, then it implies that
variable is some sort of memory storage.
)

$(P
Examples:
---
int luckyNumber = 777; // luckyNumber is variable with value 777.

int unluckyNumber = 13; // unluckyNumber is variable with value 13.

unluckyNumber = luckyNumber; // Value of unluckyNumber is 777 now.
---
)

$(P
Programmer can assign any name to a variable as long as it is
one word, that is no spaces are allowed in name of a variable.
By the way, as you might have already noticed space is used as the separator
between words in program text, similarly to English text.
)

$(P
Any storage has its size. This size depends on what kind of
thing we store. "Kind of thing" in programming terminology usually
called $(I type). Thus, each variable is of some type. Some basic types
like `int` and `string` are already defined for us to use by D language;
also in addition to predefined types we can define our own types and
give them whatever names we like. 
)

$(P
Declaration of a variable in D language looks like:
---
// TypeName VariableName;
    int     luckyNumber;
---
We also can simulataniously declare variable and assign a value to it:
---
// TypeName VariableName = Value;
    int     luckyNumber  =  777;
---
)

$(P
So we can give our names to types and variables.
Anything else? Yes, we can also give a $(I function) any name we want.
$(I Function) is a variable too, but instead of storing data like
number or string it stores instructions. Because of that,
most programming languages treat functions differently than just variables.
)

$(P
Because function stores instructions it could be $(I called) or $(I invoked)
for its instructions to be executed. The result of the execution is
called function $(I return value).
$(I Function) input data is called function $(I parameters).
)

$(P
Function is declared like this:
---
// ReturnType FunctionName( FunctionParameters ) { Instructions }
     int      doubleNumber(   int inputNumber  ) { return inputNumber * 2; }
---
)
