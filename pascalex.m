fs = 48000;
Ts = 1/fs;
t = 0:Ts:3;
f = 440;
[x,fs] = audioread('Lab6_mono.wav');

coeff = pascals_triangle(1)

num = coeff;

den = 1;

zeros = roots(num);

poles = roots(den);

zplane(zeros,poles);

[H,F] = freqz(coeff, den, length(t), fs);

figure;

plot(F,20 * log10(abs(H)));

figure;

plot(F,angle(H));

y = filter(coeff,den,x);

soundsc(x,fs);

