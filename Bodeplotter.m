W=logspace(-2,3,100000);
s=tf('s');
G=1/((s+1)*(s+2));
[mag,phase]=bode(G,W);
mag=squeeze(mag);
mag=20*log10(mag);
phase=squeeze(phase);
subplot(2,1,1)
semilogx(W,mag);
grid on
subplot(2,1,2)
semilogx(W,phase);
grid on

