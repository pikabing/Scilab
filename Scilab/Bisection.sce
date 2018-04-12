function[] = bisection(xi,xj)
    xmold = xi + xj / 2;
    fxi = xi^3 - 0.165*(xi^2) + 3.99*(10^4)
    fxm = xmold^3 - 0.165*(xmold^2) + 3.99*(10^4)
    temp = fxi*fxm
    if (temp<0) then
        xj = xmold
    else
        xi = xmold
    end
    xmnew = xi + xj / 2
    err = abs(xmold - xmnew / xmnew * 100)
    while (err>5)
        xmnew = xj + xi / 2
        fxi = xi^3 - 0.165*(xi^2) + 3.99*(10^4)
        fxm = xmnew^3 - 0.165*(xmnew^2) + 3.99*(10^4)
        temp = fxi*fxm
        if (temp<0) then
            xj = xmnew
        else
            xi = xmnew
        end
        err = abs(xmold - xmnew / xmnew * 100)
        xmold = xmnew
    end
    disp(xmold)
endfunction