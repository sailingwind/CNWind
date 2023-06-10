function [ betaGZ ] = betaGZF( tc,z )
% 风压高度变化系数
% tc 地表类型： A=1 B=2 C=3 D=4
% z 计算高度

hg = [300 350 450 550]; % 梯度风高度
g = 2.5; %峰值因子
if tc == 1
    z(z<=5) = 5;
    z(z>=hg(tc)) = hg(tc);
elseif tc == 2
    z(z<10) = 10;
    z(z>=hg(tc)) = hg(tc);
elseif tc == 3
    z(z<15) = 15;
    z(z>=hg(tc)) = hg(tc);
elseif tc == 4
    z(z<30) = 30;
    z(z>=hg(tc)) = hg(tc);
end
betaGZ = 1 + 2*g*iZF(tc,z);
end

