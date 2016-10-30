% am folosit informatii: https://www.mathworks.com/help/signal/ref/square.html?requestedDomain=www.mathworks.com

t1=0:0.002:4 %rezolutie temporara care afiseaza semnalul pt 4 s
t2=0:0.02:4
t3=0:0.2:4
T=2; %perioada
F=1/T %frecventa
x1=-0.25+0.75*square(2*pi*F*t1,25) %vectorul ce retine valorile semnalului; functia square primeste ca parametrii argumentul functiei sinus si factorul de umplere
%pentru ca semnalul sa aiba amplitudinea de 75% din valoarea initiala am setat o
%amplitudine de 0.75 iar pentru ca semnalul sa se situeze (sa coboare) intre -1 si 0.5 am
%adaugat o componenta continua de -0.25
x2=-0.25+0.75*square(2*pi*F*t2,25)
x3=-0.25+0.75*square(2*pi*F*t3,25)
figure(1)
plot(t1,x1)
figure(2)
plot(t2,x2)
figure(3)
plot(t3,x3)