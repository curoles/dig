$(H2 Contracts)

$(P
---

// Take array of apples and
// sort its elements in place by value.
//
void sortApples(ref float[] apples)
out
{
    assert( apples.length <= 1 || apples[0] <= apples[apples.length-1]);
}
body
{
    void swap(ref float[] apples, size_t position1, size_t position2)
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
                swap(apples, current, other);
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

)

$(P
function in{} out{}, rewrite f2c checking input and output temperatures;
use pure 
)



