function [ u ] = uPowerF(z,tc,uRef,zRef)
% ָ���ʷ�����

alpha = [0.12 0.15 0.22 0.3]; % ָ��
zG = [300 350 450 550];  % �ݶȷ�߶�
u = uRef.*(z./zRef).^alpha(tc);

u(z>zG(tc)) = uRef.*(zG(tc)./zRef).^alpha(tc);

end

