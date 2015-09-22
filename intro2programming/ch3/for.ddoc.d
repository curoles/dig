$(H2 For)

$(P
It is possible to code any loop with just `while`,
however there is one important case that deserves
special approach.
)

$(P
Consider a case when we have to repeat something
some number of times:
---
int count = 0;
while (count < 7)
{
  // Do work here.
  ++count; // short form for count = count + 1
}
---
The code is perfectly legit but somewhat verbose,
also there is a chance that code incrementing variable
$(B count) `++count;` can be missed by programmer's mistake
or because some corner case was overlooked and execution
does not get to that point.
The better way to go is to use keyword `for` or keyword `foreach`.
With keyword `for` the code about could be rewritten as:
---
for (int count = 0; count < 7; ++count)
{
  // Do work here.
}
---
With keyword `foreach`:
---
foreach (count; 0..7)
{
  // Do work here.
}
---
)

$(P
`for` statement syntax is:
---
//      Define      Condition  Statement   Block of 
//       and         checked      to      statements
//    initialize     on each   increment     to
//   counter once   iteration   counter    execute
//        ↓             ↓          ↓          ↓
for (int count = 0; count < 7; ++count)   { Block }
---

Reasons why `for` is better than `while` for this simple task:
$(OL
$(LI
It is slightly shorter.
)
$(LI
Variable $(B count) defined right when we need it, it exists
only in the context of the block, once block is executed $(B count)
ceases to exist.
)
$(LI
It is clear for anyone that there are 3 separate actions: initialization
of the counter, checking the counter and incrementign the counter.
Harder that with `while` to make a mistake.
)
)

)

$(P
`foreach` statement syntax is:
---
//       Iterator Range
foreach (count; 0..7) { Block }
---
Why does D have `foreach` is there is `for` already?
Because `foreach` is helpful for another very common
task, iterating over a sequence.
)
