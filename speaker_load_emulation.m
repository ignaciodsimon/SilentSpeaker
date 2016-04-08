function speaker_load_emulation()

    Rc = 6.5;
    Rl = 33;
    Cl = 2*10^-6;
    Rp = 80;
    Lp = 6*10^-3;
    Cp = 220*10^-6;
    Lr = 0.33*10^-3;

    f = [10 : 40000];
    zee = ((1 ./ (Rl + (1 ./ (1i*2*pi*f*Cl)))) + (1 ./ ( Rc + (1i*2*pi*f*Lr) + ( (1/Rp) + (1 ./ (1i*2*pi*f*Lp)) + (1i*2*pi*f*Cp) ).^-1 ))).^-1;

    semilogx(f, abs(zee));
    grid
end
