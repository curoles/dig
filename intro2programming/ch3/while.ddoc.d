$(H2 While)

$(P
Witch keyword $(CN while) a programmer can repeat a block of statements
while some condition is true. This feature should be easy
to understand because it is conceptually very close to how we people repeat
something. The syntax is following:
---
while ( ConditionIsTrue ) { Statements }
---
)

$(P
In the example above we had following loop:
---
foreach (time; 0..3)
{
  // Switch lights
}
---
This loop could be written with $(CN while) as following:
---
int time = 0;
while (time < 3) // while time = 0, 1 or 2
{
  // Switch lights
  time = time + 1;
}
---
)

$(P
Ofter it is convinient to do an operation and only then check a condition.
For that D has a pair of keywords $(CN do-while).
The example above can be coded with $(CN do-while) as following:
---
int time = -1;
do
{
  // Switch lights
  time = time + 1;
} while (time < 3) // while time = 0, 1 or 2
---

)
