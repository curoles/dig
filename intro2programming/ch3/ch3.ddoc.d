$(CHAPTER ch3, Chapter 3. Execution Flow)

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
An ability to make choices is perhaps the most
important part of any intelligence.
Even simplest living organisms make their choices
in order to survive and grow.
But what does it mean for a computer to chose?
For a computer an act of choosing has two phases:
$(OL
$(LI
Make calculations that result in a boolean value
that can be $(CN true) or $(CN false).
)
$(LI
Based on the result from phase 1, jump to execution of
one piece of code or another.
)
)
)

$(P
Everything computer does is kept in its memory,
that is a program resides in computer's memory.
One computer instruction follows another instruction
back-to-back in the memory. Because of that,
after computer has executed current instruction
it fetches next instruction from the memory
and executes it and so on.

When computer repeats these cycles: fetch next instruction,
execute fetched instruction, fetch next, execute and so on,
we say that the execution flow is
linear.

It is caller linear because if you make a graph where
x-axes is time $(B t)
and y-axes is address of instruction, or $(I Instruction Pointer),
then $(CN IP(t)) function is linear function $(CN IP(t) = A*t + B),
where $(CN B) is beginning
address of a program and $(CN A) is size of one instruction.
)

$(P
Not every computational task can be solved with the default,
linear execution flow.
The simplest way to introduce non-linear execution flow
is to leave code as it is in the memory but allow "jumps".
Imagine there is an instruction something like "jump 10 instructions forward".
Upon execution this instruction tells computer to skip next
10 instructions by means of incrementing current $(I Instruction Pointer) by 10.
So the next instruction will be IP + 10. 
)
