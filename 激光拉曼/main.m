x_ccl4=CCl4_green(:,1);
x_ccl4_dn=CCl4_green(:,4);
y_ccl4=CCl4_green(:,2);
plot(x_ccl4_dn,y_ccl4);
grid on
box on
xlabel("波数差（cm^{-1}）");
zlabel("Intensity/a.u.")
ylabel("样品编号")
legend("四氯化碳Raman散射光谱图")
%%
size(x_)
x_ch3=CH3_green(:,1);
y_ch3=CH3_green(:,3);
plot(x_ch3,y_ch3);
grid on
box on
xlabel("波数\sigma (cm^{-1})");
ylabel("Intensity/a.u.")
legend("酒精Raman散射光谱图")
%%
[s,~]=size(x1);
x1=S1(:,1);
y1=S1(:,2);
z1=31*ones(s,1);
%t1=plot3(x1,z1,y1);

%legend([t1,t2,t3,t4,t5,t6,t7,t8,t9],"31号样品","32号样品","33号样品","34号样品","35号样品","36号样品","37号样品","38号样品","39号样品")
hold on
box on
grid on
xlabel("未调整波长\lambda (\mu m)");
ylabel("Intensity/a.u.")
x2=S2(:,1);
y2=S2(:,2);
z2=32*ones(s,1);
%t2=plot3(x2,z2,y2);



x3=S3(:,1);
y3=S3(:,2);
z3=33*ones(s,1);;
%t3=plot3(x3,z3,y3);


x4=S4(:,1);
y4=S4(:,2);
z4=34*ones(s,1);;
%t4=plot3(x4,z4,y4);
t4=plot(x4,y4);


x5=S5(:,1);
y5=S5(:,2);
z5=35*ones(s,1);;
%t5=plot3(x5,z5,y5);
t5=plot(x5,y5);

x6=S6(:,1);
y6=S6(:,2);
z6=36*ones(s,1);;
%t6=plot3(x6,z6,y6);



x7=S7(:,1);
y7=S7(:,2);
z7=37*ones(s,1);
%t7=plot3(x7,z7,y7);


x8=S8(:,1);
y8=S8(:,2);
z8=38*ones(s,1);
%t8=plot3(x8,z8,y8);


x9=S9(:,1);
y9=S9(:,2);
z9=39*ones(s,1);;
%t9=plot3(x9,z9,y9);


xu1=paixu(:,1);
zhi1=paixu(:,2);
stem(xu1,zhi1);
xlabel("样品序号");
ylabel("R2")
grid on
box on
legend("样品R2=Ic/Ie")

