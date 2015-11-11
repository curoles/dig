$(H2 For)

$(P
It is possible to code any loop with just $(CN while) and $(CN do-while),
however there is one important case that deserves
special approach.
)

$(P
Consider a case when we have to repeat something
some number of times, like we had it above with switching the lights:
---
int count = 0;
while (count < 7)
{
  // Do work here.
  ++count; // short form for count = count + 1
}
---
The code is perfectly legit but somewhat verbose.
Also there is a chance that code `++count;` incrementing variable
$(CN count) can be missed by mistake
or because some corner case was overlooked and execution
does not get to the point where counter is incremented via `++count`.
The better solution for this example would be to use keyword $(CN for)
or keyword $(CN foreach).
With keyword $(CN for) the code above could be rewritten as:
---
for (int count = 0; count < 7; ++count)
{
  // Do work here.
}
---
With keyword `foreach` it will look like:
---
foreach (count; 0..7)
{
  // Do work here.
}
---
)

$(P
$(CN for) statement has three parts: initialization,
conditions checking and counter(s) incrementing.
---
//      Define      Condition  Statement   Block of 
//       and         checked      to      statements
//    initialize     on each   increment     to
//   counter once   iteration   counter    execute
//        ↓             ↓          ↓          ↓
for (int count = 0; count < 7; ++count)   { Block }
---

Reasons why $(CN for) is better than $(CN while) for this particular
simple example:
$(OL
$(LI
It is slightly shorter.
)
$(LI
Variable $(CM count) is defined right when and where we need it, it exists
only in the context of the block, once block is executed $(CN count)
ceases to exist.
)
$(LI
It is clear for anyone that there are 3 separate actions: initialization
of the counter, checking the counter and incrementign the counter.
With $(CN for) it is harder than with $(CN while) to make a mistake.
)
)

)

$(P
$(CN foreach) statement has two parts: a range and
a variable that holds value of current element of the range.
---
//     Current  Range  Block of statements
//      value            to be executed
//        ↓       ↓          ↓
foreach (count; 0..7)   { Block }
---
Why does D have $(CN foreach) if there is $(CN for) already?
Because $(CN foreach) provides higher abstraction than $(CN for).
$(CN for) helps you to walk through a sequence by means of incrementing
a counter, but it knows nothing about the sequence and therefore
it is up to you to figure out correct code to iterate over the sequence.
$(CN foreach) on other hand knows about the sequence and does the walk
in your behalf, all you have to do is to use current value from the
sequence according to your task.
)
