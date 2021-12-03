function G = compGraham(A, diagcheck)
    G=A'*A;
    if diagcheck
        ddom = all((2*abs(diag(G))) >= sum(abs(G),2));
    % ddom = all(2*abs(diag(G))) >= sum(abs(G),2);
        disp("diagonally dominant?: " + string(ddom))
    end

end