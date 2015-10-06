$(CHAPTER ch4, Chapter 4. Functions)

$(P
People learn routines and memorize them
to use them later on in different situtions.
Our daily routines are small well defined and separated tasks that we
know how to execute; our bigger actions or routines
exploit smaller routines as building blocks.
Similarly, in computer science a $(I routine) or a $(I function)
is a set of instructions that perform very certain task or sub-task.
)

$(P
Functions in programming are the building blocks.
To use a function you have to $(I call) it.
Calling a function is like you saying that at some particular moment during
the execution you want to execute code of the funtion
and once the function code is executed you want to return
back to the point where it was called.
By calling one function from inside another function you
can build complex functionality.
)

$(P
Following is a list of some reasons why
$(I function) is extremly useful abstraction in computer science:
$(UL
$(LI
If we split one big monioithic program into pieces and
make these pieces to be functions, then the code becomes
much more readable and easy to undestand.
)
$(LI
Once a big monilithic program is split into functions,
we automatically get rid of duplicates, that is pieces of code that do
the same things. It might significantly reduce total
amount of code and improve quality of the code. 
)
$(LI
Concept of a function as an unit of an action is close to
how we people think.
Calling a $(I function) is similar to using a verb in a native language.
A verb implies an action, and function implies an action.
We think in terms of actions taking place in space and having time durating.
Because of that it is very natural for humans to use functions
while writing programs; it is easy to understang that a $(I function)
deals with some input and output data, in other words, processes input data and may
return some data as a result, and that to execute a function takes some
time, some computer resources. 
)
$(LI
But $(I function) in conputer schience is not only an abstraction easy for us to understand,
it also very close to what is called a function in mathematics.
Therefore many mathematical methods could be applied to programming
with functions, many things could be rigorously formulated and proved;
in other words, reasoning about a program becomes more of a schience.
)
$(LI
Thinking in terms of functions is also very practical.
Someone wrote a function, if it generic enough then everyone else can also use it.
This idea finds its application in so called code $(I libraries).
Some people write libraries full of functions and others just use them,
instead of repeating work again and again;
that facilitates constant progress as people solve new tasks instead of
solving the same ones. Also with functions any tasks can be split
into subtasks of writing functions, where each individual sub-task
is simplier than whole task and therefore easier to solve and test the solution.
)
)
)


