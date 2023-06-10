function [ bZ ] = bZF( tc,fai_z,h,z,varargin )
% 背景分量因子，规范8.4.5
% tc 地表类型： A=1 B=2 C=3 D=4
% fai_z 振型系数
% b 建筑物宽度
% h 建筑物总高
% z 计算高度
%   建筑物类型：高层：nargin =1 | 高耸：nargin =2

k_tab = [0.944 0.670 0.295 0.112;...
        1.276 0.910 0.404 0.155];
a1_tab = [0.155 0.187 0.261 0.346;...
          0.186 0.218 0.292 0.376];
      
k  = k_tab(nargin,tc);
a1 = a1_tab(nargin,tc);
rou_z = 10*sqrt(h+60*exp(-h/60)-60)/h;
muz = muZF(tc,z);

if nargin == 1
    b = varargin{1};
    rou_x = 10*sqrt(b+50*exp(-b/50)-50)/b;
    bZ = k*h^a1*rou_z*rou_x*fai_z./muz;
%     k*h^a1*rou_z*rou_x
elseif nargin == 2
    thetaB = varargin{1};
    thetaV = varargin{2};
    rou_x = 1;
    bZ = k*h^a1*rou_z*rou_x*fai_z./muz.*thetaB.*thetaV;
%     k*h^a1*rou_z*rou_x.*thetaV
end

end

