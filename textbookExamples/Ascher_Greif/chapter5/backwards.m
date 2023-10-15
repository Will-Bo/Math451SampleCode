%% An Octave function that implements backwards substitution
%% Uses vectorized operations
function [x] = backwards(A, b)
    n = size(b)(1)
    x(n) = b(n) / A(n,n);
    for k = n-1:-1:1
        %% Printing the vector value of A in this operation
        A(k,k+1:n)
        %% Printing the vector value of x in this operation
        x(k+1:n)'
        x(k) = (b(k) - A(k,k+1:n) * x(k+1:n)') / A(k,k);
    end
end
