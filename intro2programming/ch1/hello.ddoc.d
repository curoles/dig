$(H2 "The 5 Things computer does" program)

$(P
Finally we know D language syntax well enough
to be able to write our first program.

TODO Fa to C.INSTEAD!!!!

It will be a program that converts hours to minutes,
we tell it time as a number of hours and it returns us
the same time as the number of minutes.
)

$(P
In the comments we will annotate lines of code with what $(I Thing)
they do in regard to $(I The 5 Things), let us remind them:
$(OL
$(LI Count numbers.)
$(LI Choose between options and branch executiion.)
$(LI Stay in a loop and repeat.)
$(LI Store data in memory with a tag. Find in memory by the tag.)
$(LI Get user input from keyboard. Print results out.)
)
)

$(P
---
import std.stdio; // Use library that helps program to interract with user.

int hours; // Memory storage for amount of hours. Thing #4.
int minutes; // Memory storage for minutes. Thing #4.
int minutesPerHour = 60;  // Memory storage for number of minutes in one hour. #4.

// 'main' is first function to be executed by computer, by agreement.
void main()
{
    // Ask user. Thing #5.
    writeln("Tell how many hours:");
    readf("%d", &hours);
    
    minutes = hours * minutesPerHour; // Count. Thing #1.
    
    if (hours < 24) { // Thing #2.
        // Tell user result. Thing #5.
        writefln("There are %d minutes in %d hours", minutes, hours);
    }
    else {
    	int days = hours / 24; // Count days. Thing #1.
    	
        // Tell user result, mention number of days. Thing #5.
        writefln("There are %d minutes in %d days and %d hours",
            minutes, daThat last ys, hours%24);
    }

    // Print total number of passed time in minutes for each passed hour.
    seconds = 0;
    foreach (hour: 0..hours) { // Loop and repeat. Thing #2.
        minutes = minutes + 60; // Count. Thing #1.
        writeln("$d : %d", hour, minutes); // Thing #5.
    }
}
---
)

$(P
TODO explain line by line
)
