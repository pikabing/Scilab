/*method to solve by runge-kutta method*/
// Solve differential eqn
function[y1] = runge_kutta(x0,y0,xn,h)
    deff('[z] = f(x,y)','z= x+y')
    while (x0 < xn)
        k1 = h*f(x0,y0)
        k2 = h*f(x0 + h/2,y0+ k1/2)
        k3 = h*f(x0 + h/2,y0 + k2/2)
        k4 = h*f(x0 + h, y0 + k3)
        k = (k1 + k2*2 + k3 *2 + k4)/6
        x0 = x0 + h
        y1 = y0 + k
        y0 = y1
    end
endfunction



