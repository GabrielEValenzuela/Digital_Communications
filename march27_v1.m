%Ejercicio 1
lambda0 = randi(4);
lambda1 = randi(4) + 5;
RangoX = 0:20;
F0 = poisspdf (RangoX,lambda0);
F1 = poisspdf (RangoX,lambda1);
figure;
plot(RangoX,F0,'+');
hold on;
plot(RangoX,F1,'x');
%Ejercicio 2
samples = 0:30;
figure
histfit(poisspdf(samples,lambda0),5,'poisson');
hold on
histfit(poisspdf(samples,lambda1),5,'poisson');
%Ejercicio 3
figure
lambda0 = randi(4);
lambda1 = randi(4) + 5;
RangoX = 0:20;
F0 = poisspdf (RangoX,lambda0)*0.3;
F1 = poisspdf (RangoX,lambda1)*0.7;
figure;
plot(RangoX,F0,'+');
hold on;
plot(RangoX,F1,'x');
figure
lambda0 = randi(4);
lambda1 = randi(4) + 5;
RangoX = 0:20;
F0 = poisspdf (RangoX,lambda0)*0.5;
F1 = poisspdf (RangoX,lambda1)*0.5;
figure;
plot(RangoX,F0,'+');
hold on;
plot(RangoX,F1,'x');