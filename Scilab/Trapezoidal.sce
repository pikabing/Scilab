function[ans] = trapezoidal(a,b,n)
    h1 = (b-a)/n
    deff('[y] = f1(x)',"y=sqrt(x^2 + 1)")
    ans = 0
    x0 = a
    xn = b
    while (x0 < xn)
        ans = ans + (h1*(f1(x0) + f1(x0 + h1)))/2
        x0 = x0 + h1
    end
endfunction
