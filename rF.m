function [ R ] = rF( tc,w0,freq1,zeta1 )
% 脉动风荷载中共振分量因子中的参数 8.4.4-2
% tc 地表类型： A=1 B=2 C=3 D=4
% w0 基本风压，50年，B类场地
% freq1 第一阶自振频率
% st 结构类型，钢结构=1，钢混结构=2, 有填充墙的钢结构=3
% if st == 1
%     zeta1 = 0.01; % 钢结构
% elseif st == 2 
%     zeta1 = 0.05; % 钢筋混凝土及砌体结构
% elseif st ==3
%     zeta1 = 0.02; % 有填充墙的钢结构
% end



kw = [1.28 1 0.54 0.26];
x1 = 30*freq1/sqrt(kw(tc)*w0);
if x1 <= 5
    x1 = 5;
end
R = sqrt(pi/6/zeta1*x1^2/(1+x1^2)^(4/3));
end

