function[ans] = linear_interpolarion(x,x0,y0,x1,y1)
    b0 = y0;
    b1 = (y1 - y0) / (x1-x0);
    ans = b0 + b1*(x-x0);
endfunction
