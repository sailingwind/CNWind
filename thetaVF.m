function [ thetaV ] = thetaVF(bH,b0)
% 风荷载规范 中 thetaV的计算

thetaVTable = [1:-0.1:0.1; 1 1.1 1.2 1.32 1.5 1.75 2.08 2.53 3.3 5.6];

if bH/b0 < 1 && bH/b0 > 0.1
    thetaV = interp1(thetaVTable(1,:),thetaVTable(2,:),bH/b0);
elseif bH/b0 > 0 && bH/b0 < 0.1
    thetaV = 5.6;
else
    warning('输入参数错误');
end

end