%Permite ingresar todos los coeficientes de una matriz nxnn e imprime segun lo solicitado.

n = input('Ingrese el numero de filas y columnas de la matriz: ');
A = zeros(n);

for i=1:n
    for j=1:n
        inputMsj = sprintf('Ingrese el coeficiente de la pos fila: %d , columna: %d: ',i,j);
        A(i,j) = input(inputMsj);
    end
end

disp('Elementos en la fila 2');
for i=1:3
  disp(A(2,i));
  disp(' ');
end

disp('Elementos en la columna 3');
for i=1:3
  disp(A(i,3));
  disp(' ');
end

disp('Elementos en la diagonal');
for i=1:3
    disp(A(i,i));
    disp(' ');
end
