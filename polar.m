function [B, C] = polar(A)
    [U,S,V] = svd(A);
    B = U*V';
    C = V*S*V';

    % B unitary, C positive semi-def hermitian, A = B C = C' B 
end