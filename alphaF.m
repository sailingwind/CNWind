function [ output_args ] = alphaF( tc )
% 1 2 3 4 （ABCD）四类场地的粗糙度指数

alpha = [0.12 0.15 0.22 0.3];
output_args = alpha(tc);
end

