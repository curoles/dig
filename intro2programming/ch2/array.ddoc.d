$(H2 Arrays)

$(P
People deal with collections of things all the times.
We call a collection by different names: bunch, pile,
set, array and etc.
Naturally, all computer languages support collections.
The most straighforward collection type in D is $(I array).
)

$(P
$(I Array) is an ordered collection. For example, you have
a bunch of apples. If you position them in a straight line on a table,
then each apple gets its number or index in the line; you
made an array of apples where any apple in the line can
be addressed by its number.
)

$(P
Here is an example of an array that has 3 integer values.
---
import std.stdio;

void main()
{
  int[3] a; // array named 'a' and size 3.
  assert (a.length == 3);

  a[0] = 1; // assign value 1 to first element.
  a[1] = 2; // assign value 2 to second element.
  a[2] = 3;
//a[3] = 4; // Error. Static array 'a' does not have a[3].

  // Print all array's values.
  foreach (index, value; a) {
    writefln("a[%d] = %d", index, value);
  }
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
Let us rewrite previous example using dynamic array.
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
