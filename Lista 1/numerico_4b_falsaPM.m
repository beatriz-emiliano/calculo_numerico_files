%Aluna: Beatriz Emiliano Maciel de Sousa
%Matricula: 120111097

% Dados de entrada
tol = 0.001;
a = -5;
b = 5;
nummax = 400;
x0 = a;
k = 1;
A = func_04(a);
B = func_04(b);
x1 = (a * B - b * A) /(B - A);

while abs(funcao_4(x1)) > tol || abs((x1-x0) /x1) > tol || k >= nummax
 if (funcao_4(a)*funcao_4(x1) < 0)
   a = a;
   b = x1;
   G = funcao_4(x1);
   
 if (funcao_4(x0)*funcao_4(x1) > 0.0)
   F = (funcao_4(a))/2;
 end
 
 else
   a = x1;
   b = b;
   F = funcao_4(x1);
   
 if ( funcao_4(x0)*funcao_4(x1) > 0.0)
   G = funcao_4(b)/2;
 end
 end
   k = k + 1;
   x0 = x1;
   x1 = (a * B - b * A) /(B - A);
end

fprintf('Raiz encontrada com tol= %f\n',tol)
fprintf('raiz = %f\n',x1)
fprintf('Numero de iteracoes = %i\n', k)