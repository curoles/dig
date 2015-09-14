$(H2 Custom User Defined Types)

$(P
Sometimes you want to have a data type that is not
just a basic type like `int` or `string`, but something
that is a combination of information about an oject.
For example, your program is processing an information
about people; in this case a sensible unit of data
would have all information about a person: name, age and etc.
grouped together. In D it could be done using `struct`.
)

$(P
`struct` in D allows you to create compound types.
For the example above it might look like:
---
import std.stdio;

struct Person
{
  string firstName;
  string lastName;
  uint age;
}

void main()
{
  Person john = {firstName:"John", lastName:"Smith", age:15};
  john.age = 16;
  writefln("%s %s age %d", john.firstName, john.lastName, age);
}
---

Application output:
$(PRE
John Smith age 16
)
)

$(P
Having all data groupped together simplifies code, because
variable `john` has all information about that person, instead
of 3 variables (2 for name and 1 for age) we got just one.
Furthermore, D language allows us to create properties
that apply to the object as a whole. In the code below
we add property function to `struct` Person that returns `true`
if age it greater than 6 and `false` otherwise.
---
import std.stdio;

struct Person
{
  string firstName;
  string lastName;
  uint age;

  @property bool schoolAge() {return age > 6;}
}

void main()
{
  Person john = {firstName:"John", lastName:"Smith", age:5};
  while (john.age < 8) {
    writefln("%s that %s is attending school, he is %d",
      john.schoolAge, john.firstName, john.age);
    john.age++;
  }
}
---

Application output:
$(PRE
false that John is attending school, he is 5
false that John is attending school, he is 6
true that John is attending school, he is 7
)
)