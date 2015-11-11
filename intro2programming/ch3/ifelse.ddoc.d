$(H2 If-Else)

$(P
D language has pair of keywords $(CN if) and $(CN else) that provide
the most straightforward way for a programmer to change an execution flow.

The $(CN if-else) syntax in D is following:
---
// First, booleanExpression is evaluated. If it is true then we execute
// one block of instructions, if it is false then another.
//
if (booleanExpression)
{
  Statements; // execute this if booleanExpression evaluates true
}
else
{
  Statements; // execute this if booleanExpression is false
}
---
)

$(P
We have already seen $(CN if-else) in our
Fahrenheit to Celsius converter program:
---
// Boolean expression can be true or false
//        ↓
if (temperatureC < 0)
{ // ← begin block

  // Statements of the block.
  freezingCold = true;

} // ← end block
else
{ // ← begin block

  // Statements of the block.
  freezingCold = false;

} // ← end block
---
)

$(P
If condition inside parenthesis evaluates true then following
block inside curly braces {} is executed.
Otherwise block following keyword $(CN else) is executed.
Link to the official documentation $(LINK http://dlang.org/statement.html#if-statement).
)

$(P
As you might have already noticed in D
list of statements or $(I block) is enclosed inside curly braces {}.
This is very consistent throughout D's syntax, if you see something
enclosed with {} then treat it as a block, as somewhat unseparable chunk
of code.
)

$(P
Note that D does not care about where line of code starts or ends,
you can spread a statement by several lines, or squeeze several statements
into one line. For example:
---
if
(
     temperatureC
          < 0
)
{ freezingCold = true;} else { freezingCold = false; }
---
)
