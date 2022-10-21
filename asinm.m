function X = asinm(A)
    %ASINM    Matrix inverse sine.
    %   X = asinm(A) is the principal inverse sine of A.
    %   A must not have any real eigenvalues on the intervals
    %   [-inf,-1] or [1,inf], as these are the branch cuts of the
    %   inverse hyperbolic sine.
    %
    %   Reference: 
    %   Mary Aprahamian and Nicholas J. Higham, Matrix Inverse Trigonometric
    %   and Inverse Hyperbolic Functions: Theory and Algorithms, 2015, In
    %   Preparation
    %
    %   Mary Aprahamian and Nicholas J. Higham, Sep 2015
    % https://github.com/aprahamian/matrix-inv-trig-hyp/blob/a1cf4c1571b2c880cf6127e3b0748ca45ef536e0/asinm
    
    X = (pi/2)*eye(size(A)) - acosm(A);
    