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
Binary operator '$(CN &&)' performs logical $(B AND) between two boolean operands.
The result is true if both operands have value that is true.
---
assert ( (true  && true ) == true);
assert ( (true  && false) == false);
assert ( (false && false) == false);
---
)
$(LI
Binary operator '$(CN ||)' performs logical $(B OR) between two boolean operands.
The result is true if any operand is true.
---
assert ( (false  || true ) == true);
assert ( (true   || false) == true);
assert ( (false  || false) == false);
---
)
$(LI
Unary operator '$(CN !)' negates value that follows.
$(CN True) becomes $(CN false) and $(CN false) becomes $(true).
---
assert ( !false == true);
assert ( !true  == false);
---
)
)
)

$(P
There is one interesting feature of operators that worth noting.
D compiler honors common agreements about operators precedence,
similarly to mathematics,
in order to let coder to avoid parenthesis in code when it is possible.
For example, in expression `a*b + c`, operator $(CN *) will be called
fist and operator $(CN +) second. In not fot this feature, programmers
would be forced to explicitly group operands like `(a*b) + c`.
)
