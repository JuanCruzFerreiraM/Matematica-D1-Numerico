%Genera un grafica de la evolucion de la poscion y la velocidad de un pelota que cae desde una altura h0 con una velocidad inicial v0.

t = 0:0.5:10;
h_0 = input('Ingrese la altura incial de la pelota en metros: ');
v_0 = input('Ingrese la velocidad inicial de la pelota en metros sobre segundos: ');
g = 9.8; %gravedad en la tierra.

h_f = ((1/2)*(-g).*(t.*t)) + (v_0.*t) + h_0; %ecuacion de la posicion de un objeto en caida libre.
v_f = (g.*t) + v_0; %ecuacion de la velocidad de un objeto en caida libre.



plot(t,h_f,t,v_f);
title('Posicion y Velocidad de una pelota que cae');
labels = {'Posicion(m)','Velocidad(m/s)'};
legend(labels);
xlabel('tiempo(s)');
ylim([0, max(h_f)+10]);
