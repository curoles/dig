$(H1 Chapter 4. Functions)

$(P
Humans learn routines and memorize them.
Then they use learned routines when needed.
If we translate it to the programming terms,
then routine becomes $(I function) and
using routine becomes $(I calling function).
)

$(P
Function is extremly useful abstraction:
$(UL
$(LI
If we split one big monioithic program into pieces and
make these pieces to be functions, then the code becomes
much more readable and easy to undestand.
)
$(LI
Once a big monilithic program is split into functions,
we can get rid of duplicates, that is functions that do
the same things. It might significantly reduce total
amount of code. 
)
$(LI
Calling a $(I function) is similar to using a verb in a native language.
A verb implies an action, and function implies an action.
We think in terms of actions taking place in space and having time durating.
Because of that it is very natural for humans to use functions
while writing programs; it is easy to understang that a $(I function)
deals with some data, in other words, processes input data and may
return some data as a result, and that to execute a function takes some
time, some computer resources. 
)
$(LI
But $(I function) is not only an abstraction easy for us to understand,
it also very close to what is called a function in mathematics.
Therefore many mathematical methods could be applied to programming
with functions, many things could be rigorously formulated and proved;
in other words, reasoning about a program becomes more of a schience.
)
$(LI
Thinking in terms of functions is also very pracktical.
Someone wrote a function, if it generic enough then everyone can use it,
this idea found its application in so called $(I libraries).
Some people write libraries full of functions and others just use them,
instead of repeating work again and again;
that facilitates constant progress as people solve new tasks instead of
solving the same ones. Also with functions any tasks can be split
into subtasks of writing functions, where each individual sub-task
is simplier than whole task and therefore easier to solve and test the solution.
)
)
)

$(P
defining a function
)

$(P
operator=function
)

$(P
operator overloading
)
