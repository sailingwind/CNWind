function [ thetaB ] = thetaBF(bZ,b0)
% 风荷载规范 中 thetaB的计算

% bZ  建筑截面迎风宽度 B(z)
% b0  建筑底部宽度  B(0)

thetaB = bZ./b0;

end