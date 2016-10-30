t1=0:0.002:10 %rezolutie temporara care afiseaza semnalul pt 4 s
t2=0:0.02:10
t3=0:0.2:10

T=3
F=1/T

x1=0.8*sin(2*pi*F*t1) %0.8 amplitudinea
x2=0.8*sin(2*pi*F*t2)
x3=0.8*sin(2*pi*F*t3)


lungime1=length(t1)
for index=1:1:lungime1  %parcurgem vectorul si inlocuim valorile negative cu 0
    if(x1(index)<0)
        x1(index)=0;
    end
end

lungime2=length(t2)
for index=1:1:lungime2
    if(x2(index)<0)
        x2(index)=0;
    end
end

lungime3=length(t3)
for index=1:1:lungime3
    if(x3(index)<0)
        x3(index)=0;
    end
end

figure(1)
plot(t1,x1)
figure(2)
plot(t2,x2)
figure(3)
plot(t3,x3)