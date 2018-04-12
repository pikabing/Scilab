function[] = newton_raphson(x0,a,b)
    for x = a:0.0001:b
        y1 = x^5 + 4 // this is hard coded
        // you can also take coeff's of the polynomial and then use the horner
        // function to calculate the value.
        // y1 = poly(coefficient,'x','coeff')
        // s1 = horner(y1,,value)
        y2 = 5*x^4
        z = x0 - y1/y2
        disp[x,z]
    end
endfunction
