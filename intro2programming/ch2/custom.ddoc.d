$(H2 Custom User Defined Types)

$(P
Sometimes you want to have a data type that is not
just a simple basic type like `int` or `string`, but something
more complex.
that is a combination of information about an oject.
For example, your program is processing an information
about people; in this case a sensible unit of data
would have all information about a person: name, age and etc.
grouped together.
In this case, it would make sense to have a type that
can combine objects of simpler types, for instance, `string` for name
and `uint` for age.
In D it could be done using `struct`.
)

$(P
`struct` in D allows you to create compound types.
For the aforementioned example above about processing
information about people
we can write following code usign `struct`:
---
import std.stdio;

//keyword TypeName
struct     Person
{ // <- begin definition

// Type  VariableName
  string firstName;
  string lastName;
  uint   age;

} // <- end definition

void main()
{
// Type  Variable {    Field:Value      Field:Value  Field:Value };
  Person john   = {firstName:"John", lastName:"Smith", age:15    };

// var.field = new_value;
  john.age   = 16;

  writefln("%s %s age %d", john.firstName, john.lastName, john.age);
}
---

Application output:
$(PRE
John Smith age 16
)
)

$(P
Having all data groupped together simplifies code, because
variable $(B john) has all information about that person, instead
of 3 variables, 2 for name and 1 for age, we got just one.
)

$(P
Let us see what the code above is doing.
First, custom type called $(B Person) is defined.
To define structure in D you use following syntax:
---
struct TypeName { BodyWithDefinitions }
---
Where body is made up of statements like `TypeName VariableName;`.
Which is in our case 3 statements defining 3 $(I fields):
---
// Type  VariableName
  string firstName;
  string lastName;
  uint   age;
---
)

$(P
Inside function main we define variable called $(B john)
of type $(B Person): `Person john`. Simultaneously with definition
we initialize all 3 fields of the structure:
---
// Type Variable = {FieldName:Value  FieldName:Value  FieldName:Value };
  Person   john  = {firstName:"John", lastName:"Smith",     age:15    };
---
)


$(P
The way to access any field inside a structure is
by using operator $(B dot):
---
VariableName.FieldName
---

After the initialization of $(B john) we change his name
by accessing field $(B age):
---
// Var.Field = NewValue;
  john.age   = 16;
---

Then we print out information about John by accessing fields
of variable $(B john):
---
writefln("%s %s age %d", john.firstName, john.lastName, john.age);
---

)


$(P
Furthermore, D language allows us to create properties
that apply to the object as a whole. In the code below
we add $(I property function) to `struct` $(B Person)
that returns `true`
if person$(TICK)s age it greater than 6 and `false` otherwise.
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

$(P
We have not learned about functions and loops yet, so you may consider
this as "heads-up" and do not worry if something is not clear.
Function $(B schoolAge) return `true` if field $(B age)
is greater than 6 and `false` otherwise.
---
@property bool schoolAge() {return age > 6;}
---

We initialize John's age to 5:
---
Person john = {firstName:"John", lastName:"Smith", age:5};
---

And then increment his age by one untill it is greater than 8:
---
while (john.age < 8) {
  ...
  john.age++;
}
---
On each iteration of the loop we print information about John
including his school attendance status.
)
