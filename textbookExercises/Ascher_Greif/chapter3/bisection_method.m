## Calculating the zero of a function using the Bisection Method

## Calculating the value to the machine precision of 64-bit floating point
Epsilon = 1.1 * 10^(-16);

## Giving the function and bounds
## as an example, using a quadratic equation between 0 and 5
a = 0;
b = 5;
xn = abs(b+a)/2;
fun = @(x) x^2 + 3*x - 36;

## Iterating until the function value of our midpoint is less than machine precision
do
  if (fun(a) * fun(xn) < 0)
    b = xn;
  elseif (fun(b) * fun(xn) < 0)
    a = xn;
  endif

  xn = (abs(b+a)/2);

until (abs(fun(xn)) <= Epsilon)

## Printing the final x-value of the root
xn
