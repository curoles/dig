$(H2 Switch)

$(P
In a theory, no matter how complex is a choise, it can be handled with `if-else`.
Note that `if-else` syntax allows to "chain" blocks like this:
---
if      ( Condition1 ) { Block1 }
else if ( Condition2 ) { Block2 }
else if ( Condition3 ) { Block3 }
...
else if ( ConditionN ) { BlockN }
else                   { DefaultBlock }
---
But code with many "chained" `else if` is hard to write and read.
To handle multiple choise cases D has $(I switch statement).
Link to official documentation $(LINK http://dlang.org/statement.html#switch-statement).
)

$(P
Switch statement works like this:
---
switch ( Selector )
{ // ← begin block

  case Case1:
  { // ← begin block
    Case1Statements;
  } // ← end block
  break;

  case Case2:
  { // ← begin block
    Case2Statements;
  } // ← end block
  break;

...

  case CaseN:
  { // ← begin block
    CaseNStatements;
  } // ← end block
  break;

  default:
  { // ← begin block
    DefaultBlock;
  } // ← end block

} // ← end block
---
)

$(P
---
import std.stdio;

void main()
{
  string car = "moving";
  string light = "yellow";

  foreach (time; 0..3)
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
)

$(P
typical FSM, rewrite with continue
)
