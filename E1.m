%E1
%a

a=0:0.1:2   %vectorul generat pornind de la 0 cu pasul de 0.1 pana la 2  
l=length(a) %lungimea vectorului a 

b=linspace(1,1,l) %vectorul generat cu l valori de 1  

b=b(:) %transformarea vectorului linie in vector coloana

produs=a*b

%b

produs2=b*a

%c

%nu se pot inmulti element cu element vectori de lungimi diferite a(1x21)
%si b(21x1)
produs3=a.*b' %produs element cu element dintre a si transpusa lui b


