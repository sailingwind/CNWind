function [ muZ ] = muZF( tc,z )
% 风压高度变化系数
% tc 地表类型： A=1 B=2 C=3 D=4
% z 计算高度

alpha = [0.12 0.15 0.22 0.3];  % 风切变指数
zG = [300 350 450 550];        % 梯度风高度
if tc == 1
    z(z<=0) = 0;
    z(z>0&z<=5) = 5;
    z(z>=zG(tc)) = zG(tc);
elseif tc == 2
    z(z<=0) = 0;
    z(z>0&z<10) = 10;
    z(z>=zG(tc)) = zG(tc);
elseif tc == 3
    z(z<=0) = 0;
    z(z>0&z<15) = 15;
    z(z>=zG(tc)) = zG(tc);
elseif tc == 4
    z(z<=0) = 0;
    z(z>0&z<30) = 30;
    z(z>=zG(tc)) = zG(tc);
end
muZ = ((zG(2)/10)^alpha(2)/(zG(tc)/10)^alpha(tc))^2*(z./10).^(2*alpha(tc));
end

