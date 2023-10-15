%% An Octave function that implements Gaussian Elimination 
%% Returns modified A, b, and l (for the sake of LU decomposition)
function [A, b, l, u] = gaussianElim(A, b)
    n = size(b)(1);
    l = eye(n);
    for k = 1:1:n-1
        for i = k+1:1:n
            l(i,k) = A(i,k) / A(k,k);
            for j = k+1:1:n
                A(i, j) = A(i, j) - l(i, k) * A(k, j);
            end
            b(i) = b(i) - l(i, k) * b(k);
        end
    end

    %% This operation has bad asymptotic time, but I'm including for completeness' sake
    u = inv(l)*A;
end
