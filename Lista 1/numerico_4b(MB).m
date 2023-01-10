%Aluna: Beatriz Emiliano Maciel de Sousa
%Matricula: 120111097

%Questão 4b

% print inicial para identificacao
disp('Programa para calcular a raiz de uma equação não linear');
disp('Metodo da Bisseccao');

tol = input('insira a tolerancia:  '); %Leitura da tolerancia

%Variáveis atribuidas
a = -5;
b = 5;
x0 = a;
k = 0;

nmax = 400; %numero maximo de interacoes permitidas

x1 = (a + b) / 2.; %primeira aproximação

% Calculo das proximas aproximações:
while abs(funcao_4b(x1)) > tol || abs((x1-x0) / x1) > tol || k >= nmax

  if (funcao_4b(a)*funcao_4b(x1) < 0)
    a = a;
    b = x1;
  else
    a = x1;
    b = b
  end
    k = k + 1;
    x0 = x1;

    x1 = (a + b) / 2.;

end

%fprintf('Raiz encontrada com tol = %f\n', tol)
fprintf('Raiz = %f\n', x1)
%fprintf('Numero de interacoes = %i\n', k)