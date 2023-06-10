function [ iZ ] = iZF( tc,z )
% 湍流强度随高度变化
% tc 地表类型： A=1 B=2 C=3 D=4
% z 计算高度
alpha = [0.12 0.15 0.22 0.3]; % 指数
% hg = [300 350 450 550]; % 梯度风高度
iZ = i10F(tc).*(z./10).^(-alpha(tc));
end