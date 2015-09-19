$(H2 Arrays)

$(P
People deal with collections of things all the times.
We call collections by different names: bunch, pile,
set, array and etc.
Naturally, all computer languages support collections.
The most straighforward and easy to understand
collection type in D is $(I array).
)

$(P
$(I Array) is an ordered collection. For example, you have
a bunch of apples. If you position them in a straight line on a table,
then each apple gets its number or index in the line; you
made an array of apples where any apple in the line can
be addressed by its number.
)

$(P
Let us write a program that models an array of 3 apples on a table,
each apple has some weight, we are going to store weights in an array
and calculate mean weight.
---
import std.stdio;

void main()
{
  float[3] apples; // array is named 'apples' and has size 3.
  assert (apples.length == 3);

  apples[0] = 10; // first apple weights 10.
  apples[1] = 12; // second apple weights 12.
  apples[2] = 11; // third apple weights 12.
//apples[3] = 13; // Error. Static array 'apples' does not have element #3.

  float sum = 0;

  // Print all array's values.
  foreach (index, weight; apples) {
    writefln("weight of apple #%d is %.1f", index, weight);
    sum += weight;
  }

  writefln("mean weight is %d", sum / apples.length);
}
---

Application output:
$(PRE
a[0] = 1
a[1] = 2
a[2] = 3
)
)

$(P
Sometimes you do not know array's size upfront
and therefore can't use array of a fixed size.
In this case dynamic array can be used.
A dynamic array can be resized to any size.
Below is an example of how to add or $(I push back) a new
item into a dynamic array.
---
import std.stdio;

void main()
{
  int[] a; // dynamic array
  assert (a.length == 0);
  a ~= 1; // increase array's size by 1 and assign value 1 to the last element
  assert (a.length == 1);
  a ~= 2;
  a ~= 3;

  foreach (index, value; a) {
    writefln("a[%d] = %d", index, value);
  }

}
---
)
