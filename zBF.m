function [ zB ] = zBF( tc )
% 截断高度
% tc 地表类型： A=1 B=2 C=3 D=4
% z 计算高度
% alpha = [0.12 0.15 0.22 0.3];  % 风切变指数
% zG = [300 350 450 550];        % 梯度风高度

if tc == 1
    zB = 5;
elseif tc == 2
    zB = 10;
elseif tc == 3
    zB = 15;
elseif tc == 4
    zB = 30;
end

end

