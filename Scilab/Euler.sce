// program to solve differential equation by Euler's method
function[y1] = euler(x0,y0,xn,h)
    deff('z = f(x,y)','z = x+y')
    y1 = y0 + h*f(x0,y0)
    y0  = y1
    x0 = x0 + h
    while (x0 < xn)
        y1 = y0 + h*f(x0,y0)
        y0  = y1
        x0 = x0 + h
    end
endfunction
