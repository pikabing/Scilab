
// generating PSK waveform using Scilab
function[] = PSK(data,fc,Ac)
    x = Ac*sin(2*%pi*fc*t)
    y = Ac*sin(2*%pi*fc*t + %pi)
    z = data
    mods = []
    i = 0
    for i = 1:length(data)
        if (z(i) == 1) then
            mods = [mods,x]
        else
            mods = [mods,y]
        end
    end
        plot(mods)
        title('PSK Signal')
endfunction

