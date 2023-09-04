## Implementation of Chapter 1 Question 13


## Using single precision
r = single(0.05)
a = single(100)

n = single([1 4 12 365 100000]);

## Notice that the final element has *less* interest than the single compound --- single precision error
## This solution with Octave built-in operators is only slightly more accurate than my loop solution in C due to single-precision error
f = a .* exp(n .* log(1 + r ./ n))


## Now using double precision
r = 0.05
a = 100

n = [1 4 12 365 100000];

## Notice that the final element is properly compounded here
f = a .* exp(n .* log(1 + r ./ n))
