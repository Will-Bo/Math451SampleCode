%% An Octave function that implements forward substitution
%% Uses vectorized operations
function [x] = forwards(A, b)
    n = size(b)(1)
    %% Initializing x to zeroes
    x(n) = 0;

    %% Populating the values of x
    x(1) = b(1) / A(1,1);
    for k = 2:1:n
        %% Printing the vector value of A in this operation
        A(k,1:k)
        %% Printing the vector value of x in this operation
        x(1:k)'
        x(k) = (b(k) - A(k,1:k-1) * x(1:k-1)') / A(k,k);
    end
end
