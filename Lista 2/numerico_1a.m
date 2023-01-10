%Aluna: Beatriz Emiliano Maciel de Sousa 
%Matricula: 120111097

%Questão 1.a

x = -5:0.005:5
y = 3.*e.^(x)-5.*cos(2*x); %Função f(x) = 3e^x-5cos(2x)
plot(x,y, 'r-'); %Plot do gráfico, com o traço continuo na cor vermelha
title('Gráfico f(x) = 3e^x-5cos(2x) com intervalor de [-5,5]'); %Titulo 
xlabel('Eixo x'); %label 
ylabel('Eixo y');
legend('f(x)');
grid on;