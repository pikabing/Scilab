function[res] = quadratic_interpolation(x,x0,y0,x1,y1,x2,y2)
    b0 = y0;
    b1 = (y1-y0)/(x1-x0);
    b2 = ( (y2 - y1)/(x2-x1) + (y1-y0)/(x1 - x0) ) / (x2 - x0);
    res = b0 + b1*(x-x0) + b2*(x-x0)*(x-x1);
endfunction
