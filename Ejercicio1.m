lambda0 = randi(4);
lambda1 = randi(4) + 5;
RangoX = 0:20;
F0 = poisspdf (RangoX,lambda0);
F1 = poisspdf (RangoX,lambda1);
figure;
plot(RangoX,F0,'+');
hold on;
plot(RangoX,F1,'x');