function [A,B,C,D] = linear_model()

M = .5;
m = 0.2;
b = 2;
I = 0.006;
g = 9.8;
l = 0.3;

p = I*(M+m) + M*m*l^2;

A = [0      1              0           0;
     0 -(I+m*l^2)*b/p  (m^2*g*l^2)/p   0;
     0      0              0           1;
     0 -(m*l*b)/p       m*g*l*(M+m)/p  0];

B = [0;
     (I+m*l^2)/p;
     0;
     m*l/p];

C = eye(4);
D = zeros(4,1);

end
