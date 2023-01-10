%Aluna: Beatriz Emiliano Maciel de Sousa
%Matricula: 120111097

%Questão 5b - Metodo Bisseccao

% Mensagens de identificação
disp('Programa para calcular a raiz de uma equação não linear');
disp('Metodo da Bisseccao');

tol = 0.00001; %10^-5
a = -5;
b = 5;
x0 = a;
k = 0;

%num max de interacoes permitidas
nmax = 400;

%Primeira aproximação
x1 = (a + b) / 2.;

% Calculo das aproximações:
while abs(funcao_5(x1)) > tol || abs((x1-x0) / x1) > tol || k >= nmax

  if (funcao_5(a)*funcao_5(x1) < 0)
    a = a;
    b = x1;
  else
    a = x1;
    b = b;
  end
    k = k + 1;
    x0 = x1;
    x1 = (a + b) / 2.;

end

fprintf('Raiz encontrada com tol = %f\n', tol);
fprintf('Raiz = %f\n', x1);
fprintf('Numero de interacoes = %i\n', k);