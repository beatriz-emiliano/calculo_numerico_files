%Aluna: Beatriz Emiliano Maciel de Sousa 
%Matricula: 120111097

%Questão 3b - Gráfico

x = -5:0.001:5
y = 5.*cos(x) - 2.*e.^(3*x);
plot(x,y, 'r-'); %Plot do gráfico, com o traço continuo na cor vermelha
ylim([-60 60]);
title('Gráfico com intervalor de [-5,5]'); %Titulo 
xlabel('Eixo x'); %label 
ylabel('Eixo y');
legend('f(x)'); grid on;