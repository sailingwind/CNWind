function [ muS ] = cp2MuSF( tc,cP,zRef,z,varargin )
% 规范中的体型系数与常用的风压系数的换算
% tc 地表类型： A=1 B=2 C=3 D=4
% zRef cP的参考高度
% z 测点高度

alpha = [0.12 0.15 0.22 0.3]; % 指数

if nargin == 5 
    if string(varargin) == 'prototypeCode' % 1、几何尺度为原型 2、需要使用规范中的保守处理方式
        hg = [300 350 450 550]; % 梯度风高度
        if tc == 1
            z(z<=5) = 5;
            z(z>=hg(tc)) = hg(tc);
        elseif tc == 2
            z(z<10) = 10;
            z(z>=hg(tc)) = hg(tc);
        elseif tc == 3
            z(z<15) = 15;
            z(z>=hg(tc)) = hg(tc);
        elseif tc == 4
            z(z<30) = 30;
            z(z>=hg(tc)) = hg(tc);
        end
    else        
        warning('Wrong model scale! prototypeCode ?');
    end
end

muS = cP.*power((zRef./z),alpha(tc)*2);

end