$(H2 Other Means to Control Flow)

$(P
`if`, `while` and `for` might look like ultimate solution
for everything, but the matter is not that simple.
Imagine you have a conversation with someone who in one
sentence uses dozens of $(B if-then-while-once) and etc.,
very soon you get lost, because it is too hard to keep
track of too many conditions at once. We humans usually
deal with it by way of using simple sentences and partitioning
chunks of information. In programming it would correspond
to code with:
$(UL
$(LI limited number of nested $(B if-else) or nested loops;)
$(LI functionality partitioned into many separate functions;)
$(LI where each function does only one thing and its code is
not too long so a reader does not get lost.)
)

)

$(P
A good programmer always strives to write code as simple as
possible, this strategy usually makes code short, elegant and easy to
understand.
For example, in many cases computation can take care of corner cases
itself. Consider following piece of code that calculates cost of
apples.
---
import std.stdio;
void main()
{
    immutable float pricePerPound = 0.97;
    immutable float stateTaxPerApple = 0.01;

    float[] apples = [0.3, 0.28, 0.31]; // array of weights

    if (apples.length == 0)
    {
        writefln("No apples. Total cost is 0");
    }
    else
    {
        float cost = apples.length * stateTaxPerApple;

        foreach (weight; apples) {
           cost += weight * pricePerPound;
        }
        writefln("Total cost is %f", cost);
    }
}
---
When there are no apples then you naturally pay nothing and thus
total cost is going to be 0, so the code above handles this special
case using `if (apples.length == 0) { ... } else { ... }`.
But there is no need to handle this case any different from others.
Indeed, when lenght of array $(B apples) is zero, then
`apples.length * stateTaxPerApple` is 0 and `foreach (weight; apples)`
does not loop at all. So the code can be safely rewritten as
much shorter version:
---
import std.stdio;
void main()
{
    immutable float pricePerPound = 0.97;
    immutable float stateTaxPerApple = 0.01;

    float[] apples = [0.3, 0.28, 0.31]; // array of weights

    float cost = apples.length * stateTaxPerApple;

    foreach (weight; apples) {
       cost += weight * pricePerPound;
    }
    writefln("Total cost is %f", cost);
}
---
)

$(P
Generally, one has to understand two things in order to write elegant
code with as few $(B if-else) as possible:
$(UL
$(LI
Sometimes "decision" about execution flow can be made in few different places in a code space,
pick one that causes less code to write. The example above illustrates it.
)
$(LI
Code has phases or times, first when you write code, then when code is compiled
and prepared for execution, last when it actually runs.
In terms of these 3 phases, try to make decision as early as possible to avoid
doing everything with $(B if-else) at run time.
)
)
)

$(P
For example, say we write a program that returns price per pound for
different fruits:
---
import std.stdio;
void main(string[] args)
{
    string fruit = args[1];

    float price;
    switch (fruit)
    {
    case "apple":  price = 0.97; break;
    case "orange": price = 1.22; break;
    case "grape":  price = 1.14; break;
    default: price = 0; // unknown fruit
    }

    writefln("%s price per pound in %f", fruit, price);
}
---
This program runs correctly and does what we want, but it can be coded
in much better way.
What the program essentially does is finding a value by a key,
basically we deal with pairs of $(B key-value).
Instead of using $(B switch) statement to find price
by name of a fruit we can express the pair in terms of associative
array that works as a map that maps key to value.
---
import std.stdio;
void main(string[] args)
{
    string fruit = args[1];

    float[string] price = ["apple":0.97, "orange":1.22, "grape":1.14];

    writefln("%s price per pound in %f", fruit, price[fruit]);
}
---
The second version of the program obviously looks better than first version,
mainly because we recognized that the task is about finding value by key and
expressed it with right structure. In some way we moved "decision logic" made with
$(B switch) statement from run time phase to code design phase.
)

$(P
The tennuque we just used is simple but has tremendouse power
as it allows to express our intention neatly and concise.
Imagine we replace $(B value) by a function (pointer to a function
to be precise), then we can easily map a key to an action
with such $(B key-function) map.
)

$(P
There is yet another interesting case.
Say we need to get from city A to city B. We can do it
by car, bus, boat or airplane. On a high abstact level
we can express the task as following pseudo code:
---
transport.go(A, B);
---
where transport is type Car, Bus, Boat or Airplane.
All concrete details of how trip actually go are going
to be encapsulated inside a particular type. It is much
better than write code like this:
---
switch (transportationName)
{
case "car":
    rent a car
    drive N miles on road X
    pump fuel
    ...
    break;
case "boat":
    find a boat
    sail along river Y
    fight with pirates in delta
    ...
    break;
...
}
---
)

