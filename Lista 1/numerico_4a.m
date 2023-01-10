%Aluna: Beatriz Emiliano Maciel de Sousa 
%Matricula: 120111097

%Questão 4.a

x = -5:0.001:5
y = cos(3*x-7)+0.59; %Função f(x) = cos(3x-7)+0.59
plot(x,y, 'r-'); %Plot do gráfico, com o traço continuo na cor vermelha
title('Gráfico f(x) = cos(3x-7)+0.59 com intervalor de [-5,5]'); %Titulo 
xlabel('Eixo x'); %label 
ylabel('Eixo y');
legend('f(x)');
grid on;