t1=0:0.002:10 %rezolutie temporara care afiseaza semnalul pt 4 s
t2=0:0.02:10
t3=0:0.2:10

T=4
F=1/T

x1=1.5*sin(2*pi*F*t1) %1.5 amplitudinea
x2=1.5*sin(2*pi*F*t2)
x3=1.5*sin(2*pi*F*t3)


lungime1=length(t1)
for index=1:1:lungime1   %parcurgem vectorul si inlocuim valorile negative cu opusul lor
    if(x1(index)<0)
        x1(index)=-x1(index);
    end
end

lungime2=length(t2)
for index=1:1:lungime2
    if(x2(index)<0)
        x2(index)=-x2(index);
    end
end

lungime3=length(t3)
for index=1:1:lungime3
    if(x3(index)<0)
        x3(index)=-1*x3(index);
    end
end

figure(1)
plot(t1,x1)
figure(2)
plot(t2,x2)
figure(3)
plot(t3,x3)