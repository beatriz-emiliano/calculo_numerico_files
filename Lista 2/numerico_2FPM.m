%Aluna: Beatriz Emiliano Maciel de Sousa
%Matricula: 120111097

% Dados de entrada
tol = 0.001;
a = -5;
b = 5;
nummax = 400;
x0 = a;
k = 1;
A = funcao_2(a);
B = funcao_2(b);
x1 = (a * B - b * A) /(B - A);

while abs(funcao_2(x1)) > tol || abs((x1-x0) /x1) > tol || k >= nummax
 if (funcao_2(a)*funcao_2(x1) < 0)
   a = a;
   b = x1;
   G = funcao_2(x1);
   
 if (funcao_2(x0)*funcao_2(x1) > 0.0)
   F = (funcao_2(a))/2;
 end
 
 else
   a = x1;
   b = b;
   F = funcao_2(x1);
   
 if ( funcao_2(x0)*funcao_2(x1) > 0.0)
   G = funcao_2(b)/2;
 end
 end
   k = k + 1;
   x0 = x1;
   x1 = (a * B - b * A) /(B - A);
end

fprintf('Raiz encontrada com tol= %f\n',tol)
fprintf('raiz = %f\n',x1)
fprintf('Numero de iteracoes = %i\n', k)