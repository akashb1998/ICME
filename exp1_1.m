t = [0;3;6;9;12];
th = [0;344;818;1325;1789];
scatter(t,th);
hold on;
f=polyfit(t,th,1)
plot(t,t*f(1)+f(2));
xlabel('Time(s)');
ylabel('Thickness(mm)');
title('Electroless Ni deposition');
x=(th-t*f(1)-f(2)).^2;
x=sum(x);
y=(th-mean(th)).^2;
y=sum(y);
r2=1-x/y