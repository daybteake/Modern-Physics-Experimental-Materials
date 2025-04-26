function [fitresult, gof] = createFit(px, py)
%CREATEFIT(PX,PY)
%  创建一个拟合。
%
%  要进行 '无标题拟合 1' 拟合的数据:
%      X 输入: px
%      Y 输出: py
%  输出:
%      fitresult: 表示拟合的拟合对象。
%      gof: 带有拟合优度信息的结构体。
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 26-Apr-2025 14:57:30 自动生成


%% 拟合: '无标题拟合 1'。
[xData, yData] = prepareCurveData( px, py );

% 设置 fittype 和选项。
ft = fittype( 'smoothingspline' );
opts = fitoptions( 'Method', 'SmoothingSpline' );
opts.SmoothingParam = 7.22673050458387e-06;

% 对数据进行模型拟合。
[fitresult, gof] = fit( xData, yData, ft, opts );

% 绘制数据拟合图。
figure( 'Name', '无标题拟合 1' );
h = plot( fitresult, xData, yData );
legend( h, '探针振幅', '频率-探针振幅拟合曲线', 'Location', 'NorthEast', 'Interpreter', 'none' );
% 为坐标区加标签
xlabel( 'Frequency/Hz', 'Interpreter', 'none' );
ylabel( 'Amplitude/V', 'Interpreter', 'none' );
grid on


