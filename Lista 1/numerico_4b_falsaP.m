%Aluna: Beatriz Emiliano Maciel de Sousa
%Matricula: 120111097

%Questão 4b - Metodo da Falsa Posicao

tol = 0.001;
a = -5;
b = 5;

% Numero maximo de iteracoes permitido
nummax = 400;

% Atribuicoes Iniciais
x0 = a;
k = 1;
A = funcao_4(a);
B = funcao_4(b);

% Calculo da primeira aproximacao
x1 = (a * B - b * A) /(B - A);


% Calculo das aproximacoes
while abs(funcao_4(x1)) > tol || abs((x1-x0) /x1) > tol || k >= nummax
 if (funcao_4(a)*funcao_4(x1) < 0)
   a = a;
   b = x1;
   B = funcao_4(x1);
 else
   a = x1;
   b = b;
 end
   k = k + 1;
   x0 = x1;
   x1 = (a * B - b * A) /(B - A);
   
end

fprintf('Raiz encontrada com tol= %f\n',tol)
fprintf('raiz = %f\n',x1)
fprintf('Numero de iteracoes = %i\n', k)