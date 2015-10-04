$(H2 Find square root)

$(P
---
struct ResultRange
{
    double lowerBoundary, upperBoundary;

    void reset(double number) {
        lowerBoundary = 0;
        upperBoundary = number;
    }

    this(double number) { reset(number); }

    @property double lower() { return lowerBoundary; }
    @property double upper() { return upperBoundary; }

    @property double middle()
    in { assert (upperBoundary >= lowerBoundary); }
    body {
        return (upperBoundary - lowerBoundary)/2;
    }

    @property double lower(double newBoundary)
    in { assert(newBoundary <= upperBoundary); }
    body {
        return lowerBoundary = newBoundary;
    }

    @property double upper(double newBoundary)
    in { assert(newBoundary >= lowerBoundary); }
    body {
        return upperBoundary = newBoundary;
    }

    @property double span() { return upperBoundary - lowerBoundary; } 
}

double iterativeSqrt(double number)
{
    ResultRange range(number);

    for (i; 0..5)
    {
        double sroot = range.middle;
        if ( (sroot * sroot) >= number ) {
            range.upper = sroot;
        }
        else {
            range.lower = sroot;
        }
    } //while ( range.span/range.middle > 0.0001)

    return range.middle;
}
---
)
