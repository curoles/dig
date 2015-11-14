$(H2 Passing argument as in, out or ref)

$(P
Normally, when an argument is passed to a function its copy is
created and made available to the function. If the original data
is modified it does not affect the function, because the function deals
with the copy and it can do whatever it wants and how long it wants
with the copy.
However, imagine we want to modify just few elements of
a huge array of data with a function.
If the array is passed by the usual way that is $(I by value), then computer spends
its memory resources to make the copy. Next, the modified copy has to be
returned back to the function caller. As result a lot of memory resources
are used and coder has to deal with the return value of modified array.
)

$(P
D language has a solution for situations like that.
Declare function argument as $(I reference) with keyword $(CN ref)
and instead of the copy function gets a reference to the original data.
Then the function modifies the data and exits. Now the caller of the
function may assume that the data are modified.
)

$(P
Word of advice though. Do not abuse this feature, do not send
everything via references. It becomes hard to understand code
when you are not sure what data at given momement of time is changing
"under your feet". You will have to posses an ultimate knowledge
of all functions in order to be always sure what is going on.
)

$(P
In order to help coders to rationalize about their code
D language has two additional types of argument quilifiers:
$(CN in) and $(CN out).
)

$(P
$(CN out) is similar to $(CN ref),
it tells that the function is going to change the argument
and caller can use modified data upon the function return,
but the function shall $(B NOT) assume that original data
initiliazed and can be used as an input data. 
)

$(P
Argument quilifier $(CN in) is mostly for programmer herself
to stress the point that this particular argument should be
treated as input data and function should not change its value.
)

$(P
Let us consider an example where sending data to a function
by reference could be of actual value.

We will use the example with an array of apples on a table again.

Say we want to sort them on the table by weight, first apple is
the lightest, last apple is the heaviest.

Our sorting algorithm will be the most straighforward one.
Take first apple and compare it with second, if second apple
is lighter than first, then we swap the apples. Next, we again
take first apple and compare it with third apple, swap them
if third apple is lighter than first apple. And so on until
we end up with the lightest apple in first position. Then we
repeat the same procedure for second position, third and so on.
)

$(P
If for the array we have variable declared like:
---
float[] apples;
---
Then our algorithm will loop like following two loops.
In the outer loop we deal with each position one by one
starting from the first position and ending with last position.
In the inner loop we compare weight of the apple in current
position with all apples that follow it in the array.
Note that with each iteration of the outer loop
we deal with less apples in the inner loop because
slow but steady we figure our lighter apples.
---
for (size_t current = 0; current < apples.length; ++current)
{
    for (size_t other = current + 1; other < apples.length; ++other)
    {
        if (apples[other] < apples[current])
        {
            swapApples(apples, current, other);
---
Function $(CN swapApples) looks like following:
---
void swapApples(
    ref float[] apples, // reference to the array of apples
    size_t position1, 
    size_t position2
)
{
    auto valueAtPos1  = apples[position1]; // save value at position 1
    apples[position1] = apples[position2]; // overwrite value at pos. 1
    apples[position2] = valueAtPos1;       // use saved value at position 1
}
---
We send array of apples via reference because all we want to do is to
quickly swap two apples in the array, rest of the array is not affected. 
)

$(P
We know how we are going to code the algorithm and how swaping apples
in the array done in place, so we are ready to put all pieces together.
---
// Take array of apples and
// sort its elements in place by value.
//
void sortApples(ref float[] apples)
{
    void swapApples(ref float[] apples, size_t position1, size_t position2)
    {
        auto valueAtPos1  = apples[position1]; // save value at position 1
        apples[position1] = apples[position2]; // overwrite value at pos. 1
        apples[position2] = valueAtPos1;       // use saved value at position 1
    }

    for (size_t current = 0; current < apples.length; ++current)
    {
        for (size_t other = current + 1; other < apples.length; ++other)
        {
            if (apples[other] < apples[current])
            {
                swapApples(apples, current, other);
            }
        }
    }
}

import std.stdio;

void main()
{
    float[] apples = [ 1.5, 0.11, 1.23, 0.90, 1.01];

    sortApples(apples);

    // Print all array's values.
    foreach (index, weight; apples) {
        writefln("%d : %.2f", index, weight);
    }
}
---
Application output:
$(PRE
0 : 0.11
1 : 0.90
2 : 1.01
3 : 1.23
4 : 1.50
)

)

$(P
We used $(CN for) instead of $(CN foreach) in the code because our sorting algorithm
deals with positions rather than with values, so $(CN for) is quite convinient
to use here. As an exercise, try to rewrite the program with $(CN foreach),
pay attention to how function $(CN swapApples) interact with the iterations.
)
