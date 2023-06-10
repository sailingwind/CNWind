function [ u ] = uPowerF(z,tc,uRef,zRef)
% 指数率风剖面

alpha = [0.12 0.15 0.22 0.3]; % 指数
zG = [300 350 450 550];  % 梯度风高度
u = uRef.*(z./zRef).^alpha(tc);

u(z>zG(tc)) = uRef.*(zG(tc)./zRef).^alpha(tc);

end

