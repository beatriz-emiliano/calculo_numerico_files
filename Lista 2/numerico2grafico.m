%Aluna: Beatriz Emiliano Maciel de Sousa 
%Matricula: 120111097

%Questão 2 - Gráfico

x = -5:0.001:5
y = 7.*x.^(5)+25.*x.^(2)-38*x-37;
plot(x,y, 'r-'); %Plot do gráfico, com o traço continuo na cor vermelha
ylim([-60 60]);
title('Gráfico com intervalor de [-5,5]'); %Titulo 
xlabel('Eixo x'); %label 
ylabel('Eixo y');
legend('f(x)');
grid on;