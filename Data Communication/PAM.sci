// generating PAM using scilab
function[] = pam(Am,fm)
    t = 0:0.1:12*%pi
    Vc = 1 + squarewave(4*t)
    Vm = Am*sin(2*%pi*fm*t)
    Mt = Vc.*Vm
    subplot(3,1,1)
    plot(Vm)
    title('Modulating Signal')
    subplot(3,1,2)
    plot(Vc)
    title('Carrier Signal')
    subplot(3,1,3)
    plot(Mt)
    title('PAM Signal')
endfunction

