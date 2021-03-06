// generating AM waveform using Scilab
function[] = am(Am,Ac,fm,fc,fs) 
    t = 0:1/fs:1
    Vm = Am*sin(2*%pi*fm*t)
    Vc = Ac*sin(2*%pi*fc*t)
    Mt = (Ac + Vm).*(cos(2*%pi*fc*t))
    subplot(3,1,1)
    plot(Vm)
    title('Modulating Signal')
    subplot(3,1,2)
    plot(Vc)
    title('Carrier Signal')
    subplot(3,1,3)
    plot(Mt)
    title('Modulated Signal')
endfunction
