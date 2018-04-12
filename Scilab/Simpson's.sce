function[ans] = simpsons(a,b,n)
    h1 = (b-a)/n
    deff('[y] = f(x)',"y=sqrt(x^2 + 1)")
    ans = 0
    x0 = a
    xn = b
    while (x0 < xn)
        ans = ans + (h1*(f(x0) + 4*f(x0 + h1) + f(x0+ 2*h1)))/3
        x0 = x0 + 2*h1
    end
endfunction

