%Comprobacion polinomios interpolantes de Newton del ejercicio 1.

x= [ 1.00 1.25 1.50 1.75 2.00 2.25 2.50]
y= [-4.50 2.48 1.79 -4.47 -6.00 -0.22 14.70]
plot(x,y,'o') %grafica solamente los puntos
grid on %grafica una grilla

hold on
x= [1:0.1:2.50] %define el vector x entre 1 y 2.50 con intervalos 0.1
P1= -4.50 + 27.92.*(x-1) %polinomio interpolante de Newton de grado 1
P2= -4.50 + 27.92.*(x-1) - 61.36.*(x-1).*(x-1.25) %polinomio interpolante de Newton de grado 2
P3= -4.50 + 27.92.*(x-1) - 61.36.*(x-1).*(x-1.25) + 22.4.*(x-1).*(x-1.25).*(x-1.50) %polinomio interpolante de Newton de grado 3
plot(x,P3,'r',x,P2,'b',x,P1,'y') %grafica los polinomios interpolantes de Newton de grado 1, 2 y 3;

x= [ 1.00 1.25 1.50 1.75 2.00 2.25 2.50]
y= [-4.50 2.48 1.79 -4.47 -6.00 -0.22 14.70]
coef=polyfit(x,y,6)

x= [1:0.1:2.50] %define el vector x entre 1 y 2.50 con intervalos 0.1
P6= polyval(coef,x) %evalúa el polinomio con los coeficientes hallados
plot(x,P6,'g')
