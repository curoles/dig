$(H2 Switch)

$(P
In a theory, no matter how complex is a choice, it can be handled with just $(CN if-else).
Of course, complex logic will require many $(CN if-else).
Note that $(CN if-else) syntax allows to "chain" blocks like this:
---
if      ( Condition1 ) { Block1 }
else if ( Condition2 ) { Block2 }
else if ( Condition3 ) { Block3 }
...
else if ( ConditionN ) { BlockN }
else                   { DefaultBlock }
---
But code with too many "chained" $(CN if-else) is hard to write and read.
To handle multiple choice cases D has $(I switch statement).
Link to official documentation $(LINK http://dlang.org/statement.html#switch-statement).
)

$(P
Switch statement works like this:
---
switch ( Selector )
{ // ← begin switch block

  case Case1:
  { // ← begin block
    Case1Statements;
  } // ← end block
  break; // exit switch block

  case Case2:
  { // ← begin block
    Case2Statements;
  } // ← end block
  break; // exit switch block

...

  case CaseN:
  { // ← begin block
    CaseNStatements;
  } // ← end block
  break; // exit switch block

  default:
  { // ← begin block
    DefaultBlock;
  } // ← end block
  break; // exit switch block

} // ← end block
---
)

$(P
To demonstrate how $(CN switch) could be used,
let us write a program that simulates traffic light
that switches from yellow to red, then from red to green
and from green back to yellow.
---
import std.stdio;

void main()
{
  string light = "yellow"; // start with yellow light

  foreach (time; 0..3) // switch light 3 times
  switch ( light )
  {
    case "yellow": // if (light == "yellow")
    {
      writeln("Brake on yellow");
      light = "red"; // switch yellow to red
    }
    break;

    case "red": // if (light == "red")
    {
      writeln("Stay still on red");
      light = "green";  // switch red to green
    }
    break;

    case "green": // if (light == "green")
    {
      writeln("Go on green");
      light = "yellow";  // switch green to yellow
    }
    break;

    default:
    {
      writeln("Fix the light!");
    }
    break;

  }
}
---

Application output:
$(PRE
Brake on yellow
Stay still on red
Go on green
)

)

$(P
This program implements typical $(I State Machine).
$(I State Machine) is conceived as an abstract machine
that can be in one of a finite number of states.

Using keyword $(CN foreach) (will study it in next section)
we create a loop where we call `switch (light)` 3 times.
Each time we get into one of 3 blocks associated with
different cases, inside each block light switches to
next one in the sequence, or in terms of $(I State Machine)
light changes its state.
)

