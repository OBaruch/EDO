clear all; clc;
f=@(t,y)(y+t.^2.*(cos(t)-sin(t))+t.*(cos(t)-3.*sin(t))-cos(t));
g=10; %graficas
h=10.^-(1:g); tf=5; 

for k=1:g
    t(1)=0; y(1)=0; i=1;
    %Soluci�n num�rica.
    while(t(i)<=tf)
        y(i+1)=y(i)+h(k)*f(t(i),y(i));
        t(i+1)=t(i)+h(k); i=i+1;
    end
    %Soluci�n anal�tica.
    sol=3.*cos(t)-3.*exp(t)+t.^2.*sin(t)+2.*t.*cos(t)+3.*t.*sin(t);
    subplot(1,g,k);plot(t,y,'b',t,sol,'r')
   
end

%Valor real

legend('Soluci�n num�rica (aproximada)','Soluci�n anal�tica (exacta)')
xlabel(['M�todo de Euler'])

