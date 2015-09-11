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
  int[3] a;
  a[0] = 1;
  a[1] = 2;
  a[2] = 3;

  foreach (int index, int value; a) {
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
---
import std.stdio;

void main()
{
  int[] a;
  a ~= 1;
  a ~= 2;
  a ~= 3;

  foreach (index, value; a) {
    writefln("a[%d] = %d", index, value);
  }

}
---
)
