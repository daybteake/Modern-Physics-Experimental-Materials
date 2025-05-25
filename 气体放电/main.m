p3_y=p30(:,2);
p3_x=p30(:,1);
[endx3,~]=find(p3_x==28);
[beginx3,~]=find(p3_x==-44.8);
p3_xl=p3_x([beginx3:endx3]);
p3_yl=log(p3_y([beginx3:endx3]));
xx3=-44.8:0.1:28;
yy3=spline(p3_xl,p3_y([beginx3:endx3]),xx3);
dy3=diff(yy3)./diff(xx3);
pn3=polyfit(p3_xl,p3_yl,1);
y3=polyval(pn3,p3_xl);
p35_y=p35(:,2);
p35_x=p35(:,1);
p4_y=p40(:,2);
p4_x=p40(:,1);
[endx4,~]=find(p4_x==20);
[beginx4,~]=find(p4_x==-50.5);
p4_xl=p4_x([beginx4:endx4]);
p4_yl=log(p4_y([beginx4:endx4]));
xx4=-50.5:0.1:20;
yy4=spline(p4_xl,p4_y([beginx4:endx4]),xx4);%三次样条插值
dy4=diff(yy4)./diff(xx4);%求导
pn4=polyfit(p4_xl,p4_yl,1);
y4=polyval(pn4,p4_xl);
p5_y=p50(:,2);
[endx5,~]=find(p5_x==15.4);
[beginx5,~]=find(p5_x==-55.5);
xx5=-55.5:0.1:15.4;
yy5=spline(p5_xl,p5_y([beginx5:endx5]),xx5);
dy5=diff(yy5)./diff(xx5);
p5_yl=log(p5_y([beginx5:endx5]));
p5_x=p50(:,1);
p5_xl=p5_x([beginx5:endx5]);
pn5=polyfit(p5_xl,p5_yl,1);
y5=polyval(pn5,p5_xl);
%

xlim([-100,100]);
ylim([-3,2000]);
yyaxis left
%t30=semilogy(p3_x,p3_y);
to30=plot(p3_x,p3_y);
hold on
to35=plot(p35_x,p35_y);
to40=plot(p4_x,p4_y);
to50=plot(p5_x,p5_y);
%t35=semilogy(p35_x,p35_y);
%t40=semilogy(p4_x,p4_y);
%t50=semilogy(p5_x,p5_y);
%t5l=semilogy(p5_xl,exp(y5));
%t4l=semilogy(p4_xl,exp(y4));
%t3l=semilogy(p3_xl,exp(y3));
xlabel("电压（V）");
%ylabel("朗缪尔探针电流（ln(\mu A)）");
ylabel("朗缪尔探针电流（\mu A）");
yyaxis right
ylim([-3,300])
t3d=plot(xx3(1:end-1),dy3);
hold on
t4d=plot(xx4(1:end-1),dy4);
t5d=plot(xx5(1:end-1),dy5);
ylabel("三次样条差值曲线求导dI/dV");
%legend([t30,t35,t40,t50,t3l,t4l,t5l],"30Pa","35Pa","40Pa","50Pa","30Pa:ln(I)-V的拟合直线","40Pa:ln(I)-V的拟合直线","50Pa:ln(I)-V的拟合直线");
legend([to30,to35,to40,to50,t3d,t4d,t5d],"30Pa","35Pa","40Pa","50Pa","30Pa:d(I)/dV-V","40Pa:d(I)/dV-V","50Pa:d(I)/dV-V");
grid on
box on