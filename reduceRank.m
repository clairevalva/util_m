function A = reduceRank(B, M, tol)

%{
     '
    Reduces rank of an N x N matrix B using SVD:
    B: matrix to reduce rank, N x N
    M: size to reduce B to M x M, 
    if zero, uses tolerance value to find final size
    tol: singular value tolerance to reduce matrix by instead of $M$, 
    if tol is negative, will not reduce this way
    ' 
%}


    [U,S,V] = svd(B);
    N = size(B,1);

    if M > N
        disp("M greater than N, cannot truncate to a bigger size")
        A = B;
    elseif M > 0
        % A = U(:,1:M)*S(1:M,1:M)*V(:,1:M)';
        A = U(1:M,1:M)*S(1:M,1:M)*V(1:M,1:M)';
        % A = B(1:M, 1:M)
    elseif tol >= 0
        s = diag(S);
        newtol = s(1)*tol;
        keep = (abs(s) <= newtol);
        M = find(keep, 1, 'first');
        M
        % A = U(1:M,1:M)*S(1:M,1:M)*V(1:M,1:M)';
        A = U(:,1:M)*S(1:M,1:M)*V(:,1:M)';
        % A = B(1:M, 1:M);
    else 
        disp("no truncation chosen, returning original matrix")
        A = B;
    end
    disp("new size: ")
    size(A)
    disp("prev size: ")
    size(B)
end