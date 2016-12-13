P = 40; wo = 2*pi/P;			

C0 = 64/1600

t = -80:.001:80;				

N = 25;			% Vom avea 50 de coeficienti
   
   x = C0*ones(size(t));		%
   
   for k = -N:-1,			% bucla pentru termenii negativi
      Xk =2*(exp(-1i*k*wo*8)*(-8*1i*k*wo+exp(8*1i*wo*k)-1))/(1i*1i*k*k*wo*wo*P*P);       
                            %OBS: am calculat integrala pentru o functie 
                            % f={-2A*t/T, pt t intre 0 si 8
                            %     si 0 in rest              
      x = x + real(Xk*exp(1i*k*wo*t));	%reconstruirea semnalului
   end;
   
   for k = 1:N,			% bucla pentru termenii pozitivi
      Xk =2*(exp(-1i*k*wo*8)*(-8*1i*k*wo+exp(8*1i*wo*k)-1))/(1i*1i*k*k*wo*wo*P*P);               
      x = x + real(Xk*exp(1i*k*wo*t));	
   end;
   
   plot(t,x,':');			
   hold on;
   plot([ -80 -72 -72 -40 -32 -32 0 8 8 40 48 48 80],[ 0 0.4 0 0 0.4 0 0 0.4 0 0 0.4 0 0   ],'-'); %semnalul initial
   hold off;
   hold off;
   xlabel('t ');
   ylabel('f(t)');
   titlevec = ['Semnalul x(t) n= ' num2str(-N),',..,',num2str(N)];
   title(titlevec);
   

clear;					% stergem memoria
figure(2); clf;			


P = 4; wo = 2*pi/P;			

D0 = 0.5;				

i = 1;					% vector pentru a memora Dn si w

for k = -25:-1,				
   Xk(i) = 1i/(2*pi*k);                  
   w(i) = k*wo;				
	i = i + 1;			
end;

Xk(i) = D0;
w(i) = 0;	

i = i + 1;				

for k = 1:25			
   Xk(i) = 1i/(2*pi*k);                 
   w(i) = k*wo;				
   i = i + 1;				
end;
   
subplot(2,1,1);				% spectrul semnalului
stem(w,abs(Xk),'filled');
xlabel('\omega ');
ylabel('|D_n|');
title('Spectru de Amplitudine');

subplot(2,1,2);				% spectru de faza
stem(w,angle(Xk),'filled');
xlabel('\omega ');
ylabel('\angle D_n ');
title('Spectru de faza');