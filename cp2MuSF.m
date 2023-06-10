function [ muS ] = cp2MuSF( tc,cP,zRef,z,varargin )
% �淶�е�����ϵ���볣�õķ�ѹϵ���Ļ���
% tc �ر����ͣ� A=1 B=2 C=3 D=4
% zRef cP�Ĳο��߶�
% z ���߶�

alpha = [0.12 0.15 0.22 0.3]; % ָ��

if nargin == 5 
    if strcmp(varargin,'prototypeCode')   % 1�����γ߶�Ϊԭ�� 2����Ҫʹ�ù淶�еı��ش���ʽ
        hg = [300 350 450 550]; % �ݶȷ�߶�
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