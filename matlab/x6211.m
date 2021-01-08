num=[1 -2];
den=[1 3 3 1 0];
[z p k]=tf2zp(num,den)
zplane(z,p)
freqs(num,den)

