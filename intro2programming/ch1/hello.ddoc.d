$(H2 "Hello, world!" program)

5 things!

---
import std.stdio; // Use library that helps program to interract with user.

int hours; // Memory storage for amount of hours.
int seconds; // Memory storage for seconds.
int secondsPerHour = 60;  // Memory storage for number of seconds in one hour.

// 'main' is first function to be executed by computer, by agreement.
void main()
{
    // Ask user.
    writeln("Tell how many hours:");
    readf("%d", &hours);
    
    seconds = hours * secondsPerHour; // Count.
    
    if (hours < 24) {
        // Tell user result.
    writefln("There are %d seconds in %d hours", seconds, hours);
    }
    else {
    	int days = hours / 24; // Count days.
    	
        // Tell user result, mention number of days.
        writefln("There are %d seconds in %d days and %d hours",
            seconds, days, hours%24);
    }
}
---
