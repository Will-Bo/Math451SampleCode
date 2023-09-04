## Heath's Chapter 1 Exercise 12

## This set of inputs --- very large numbers with little variance --- cause differences in the two algorithms due to cancellation
x = [15000000000000000.1 15000000000010000.5001 15000000000000000.0001]';
n = length(x);

mu = sum(x) / n;

## A correct estimation
twoPassStDev = sqrt((1/(n-1)) * sum((x - mu).^2));
## Square root of a negative number is complex --- due to cancellation
onePassStDev = sqrt((1/(n-1)) * (sum(x.^2) - n * mu^2));

