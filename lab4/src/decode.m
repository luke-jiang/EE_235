function s = decode(x, d, Fs, x0, x1)
    y1 = (1/Fs)*conv(x, x1);
    y0 = (1/Fs)*conv(x, x0);
    % i = t0*Fs + 1
    index = d*Fs + 1;
    y1_corr = y1(index);
    y0_corr = y0(index);
    if y1_corr > y0_corr
        s = 1;
    else 
        s = 0;
    end
end