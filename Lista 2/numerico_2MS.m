%Aluna: Beatriz Emiliano Maciel de Sousa 
%Matricula: 120111097

%Questão 2 - Método Secante

disp ('Este programa encontra uma raiz de uma equacao nao linear');
disp(' usando o Metodo da Secante');
TOL = 0.001;
x = 1;
x1 = 0.999;
k = 0;
kMAX =  50;
f  = funcao_2( x );
f1 = funcao_2( x1 );
xo = x1;

while ( abs(f) > TOL && k < kMAX)
   x2 = x - f*(x-x1)/(f-f1);
   x = x1;
   x1 = x2;
   f = f1;
   f1 = funcao_2( x1 );
   k = k+1;
   xo = x;
   fprintf('%2d           %.10f        %.10f \n',k,x,f);
end;

fprintf('Raiz encontrada com tol= %f\n',TOL)
fprintf ( 'raiz = %f\n', x1 )
fprintf('Numero de iteracoes =%i\n', k)