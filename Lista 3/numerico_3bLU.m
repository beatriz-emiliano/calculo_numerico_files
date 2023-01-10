%Aluna: Beatriz Emiliano Maciel de Sousa 
%Matricula: 120111097

%Questão 3.b - Metodo decomposição LU

%matriz:

a1 = [32 3 -5 6 5;-3 39 6 2 4;4 -5 41 7 5; 6 -7 4 55 8;-5 -5 7 9 45]

b1 = [22;41;50;45;38]


[L,U]=lu(a1)


r1= L\b1

r2= U\r1