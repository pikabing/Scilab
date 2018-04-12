function[ans] = lagrange(x)
    t = list(1,1.2,1.3,1.5)
    val = list(1,1.0934,1.1402,1.2247)
    l = list(1,1,1,1)
    j = 0
    ans = 0
    for i = 1:4 
        for j = 1:4
            if (i ~= j) then
            l(i) = l(i)*((x - t(j))/(t(i) - t(j)));
            end
        end
        ans = ans + l(i)*val(i); 
    end
endfunction

