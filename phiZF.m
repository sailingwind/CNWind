function [ phiZ ] = phiZF(flag,bt,i,z,h,varargin)
% ����ϵ�� ��¼G
% flag      ����ϵ������ �淶=1  �Զ���=2
% bt        ���������ͣ��߲�=1 | ����=2
% i         ���ͽ״�
% z         ����߶�
% h         �������ܸ߶�
% mode_coef �Զ�������ϵ��
zH = 0:0.1:1;
if flag == 1
    if bt == 1
        phi1 = [0 0.02 0.08 0.17 0.27 0.38 0.45 0.67 0.74 0.86 1; 0 -0.09 -0.30 -0.50 -0.68 -0.63 -0.48 -0.18 0.17 0.58 1;...
                0 0.22 0.58 0.70 0.46 -0.03 -0.49 -0.63 -0.34 0.27 1; 0 -0.38 -0.73 -0.40 0.33 0.68 0.29 -0.47 -0.62 -0.02 1]';
        phiZ = interp1(zH,phi1(:,i),z/h,'linear');
    elseif bt == 2
        phiZ = 0;
    end
end
if flag ==2
    tmp = varargin{1};
    phiZ = interp1(zH,tmp(:,i),z/h,'linear','extrap');
end
end