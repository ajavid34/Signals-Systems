function inverse  = p2(matrix_2d)
    if p1(matrix_2d) == 0 
    disp("matrix isn't invertible ")
    else
        inverse = [matrix_2d(4) -matrix_2d(3);-matrix_2d(2) matrix_2d(1)];
        inverse = inverse.*1/p1(matrix_2d);
    end
end