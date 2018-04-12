// generating ASK waveform using Scilab
function[] = ASK(data,fc,Ac)
    x = Ac*cos(2*%pi*fc*t)
    y = 0*t
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
        title('ASK Signal')
endfunction

