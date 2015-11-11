$(H2 Operators)

$(P
Most $(I operators) in D are represented by the symbols from Algebra like
'$(CN +)', '$(CN -)', '$(CN *)' and '$(CN /)'.
$(I Operators) operate on some data objects and produce resulting object.
For example, operator '$(CN +)' adds two numbers together and returs the sum.
---
int a;
int b;
int c;
c = a + b; // '+' is operator
---

Therefore, an operator is just a function with one symbol long name.
The idea behind operators is that we easy recognize the meaning of them
because we already know what the symbol means. 
)

$(P
Not all operators in D came from math.
One of them is operator '$(CN ~)' that means concatenation or appending.
For example, we can concatenate 2 strings like this:
---
string a = "Introduction";
string b = " to Programming";
string c = a ~ b;
assert (c == "Introduction to Programming");
---
)

$(P
Another group of operators we are going to use a lot is $(I logical) operators:
$(UL
$(LI
Binary operator '$(CN &&)' performs logical AND between two boolean operands.
The result is true if both operands value is true.
---
assert ( (true  && true ) == true);
assert ( (true  && false) == false);
assert ( (false && false) == false);
---
)
$(LI
Operator '$(CN ||)' is logical OR.
)
$(LI
Operator '$(CN !)' is negation.
)
)
)

$(P
operator precedence
)
