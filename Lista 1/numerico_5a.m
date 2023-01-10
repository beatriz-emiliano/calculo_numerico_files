%Aluna: Beatriz Emiliano Maciel de Sousa 
%Matricula: 120111097

%Questão 5.a

x = -5:0.0001:5
y = 3.*x.*e.^(-2.*x.^(2))-2.*cos(x)-1; %Função f(x) da questão
plot(x,y, 'r-'); %Plot do gráfico, com o traço continuo na cor vermelha
title('Gráfico f(x) =  (3*x.*exp(-2*x.*x))-2*cos(x)-1 com intervalor de [-5,5]'); %Titulo 
xlabel('Eixo x'); %label 
ylabel('Eixo y');
legend('f(x)');
grid on;