%informatii https://www.mathworks.com/help/signal/ref/tripuls.html

t1=0:0.002:10 %rezolutie temporara care afiseaza semnalul pt 4 s
t2=0:0.02:10
t3=0:0.2:10

T=5
F=1/T
S=1 %panta
W=0.5 %pentru ca semnalul sa fie simetric
x1 = -0.5+1.5*sawtooth(2*pi*F*t1, W);
x2 = -0.5+1.5*sawtooth(2*pi*F*t2, W);
x3 = -0.5+1.5*sawtooth(2*pi*F*t3, W);
figure(1)
plot(t1,x1)
axis([1.65 11.65 -1 1])
figure(2)
plot(t2,x2)
axis([1.65 11.65 -1 1])
figure(3)
plot(t3,x3)
axis([1.65 11.65 -1 1])