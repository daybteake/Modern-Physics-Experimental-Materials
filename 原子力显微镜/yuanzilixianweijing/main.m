x1 = X(:,1);
y1 = X(:,2);
plot(x1,y1);
hold on
grid on
box on
x2 = Y(:,1);
y2 = Y(:,2);
plot(x2,y2);
xlabel("z方向距离")
ylabel("力的大小")
legend("Piezo extends, tip decents.","Piezo retracts, tip ascents.")
px=pinlv(:,1);
py=pinlv(:,2);