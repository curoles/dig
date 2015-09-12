$(H1 Chapter 3. Execution Flow)

$(P
This chapter is mainly about two things computers can do:
$(UL 
$(LI
The Thing #2: Choose between options and branch execution accordingly.
)
$(LI
The Thing #3: Stay in a loop and repeat something.
)
)
)

$(P
An ability to make choises is perhaps the most
important part of any intellegence.
Even simplest living organizms make their choices
in order to survive and grow.
But what does it mean for a computer to chose?
For a computer act of chosing has two phases:
$(OL
$(LI
Make calculations that result in a boolean value
that can be $(B true) or $(B false).
)
$(LI
Based on the result from phase 1, jump to execution of
one piece of code or another.
)
)
)

$(P
Everything computer does is kept in its memory.
One computer instruction follow another instruction
back-to-back in the memory. Because of that
computer after he executed currect instruction
can just fetch next instruction from the memory
and execute it and so on. But this way computer
execution flow is always the same, linear.
)

$(P
Now image there is an instruction like "jump 10 instructions forward".
)
