%E4
%a
n=0:20  %vectorul generat intre 0 si 20 cu pasul implicit 1
m=-5:15
z=linspace(0,0,21)
z(6)=1
%impartirea ferestrei grafice
figure(1) %denumim graficul cu scopul de a putea afisa mai multe grafice  simultan inferestre diferite
subplot(2,1,1) %marcam afisarea in prima jumatate
stem(n,z) %afisarea graficului
subplot(2,1,2) % marcam afisarea in a doua jumatate
stem(m,z) %afisarea graficului

%b
figure(2) %marcam deschiderea
subplot(1,1,1) %marcamafisarea in toata ferestra
t=abs(10-n);
stem(n,t) %afisarea grafica a lui n in functie de t


%c
for index=-15,1;25; %dam valori lui x1 in functie de n
    x1=sin((pi/17)*n);
end

for index=0,1;50; %dam valori lui x2 in fuctie de n
    x2=cos((pi/sqrt(23))*n);  
end
figure(3)
plot(x1)
hold on %comanda pentru a avea ambele grafice in aceeasi fereastra suprapuse
plot(x2)
hold off

figure(4)
subplot(2,1,1)
plot(x1)
subplot(2,1,2)
plot(x2)

figure(5)
stem(x1)
hold on
stem(x2)

figure(6)
subplot(2,1,1)
stem(x1)
subplot(2,1,2)
stem(x2)