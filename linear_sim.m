function linear_sim()

[A,B,C,D] = linear_model();

K = [7 11 -50 -11];

sys = ss(A+B*K, zeros(4,1), C, D);

t_l = 6;
t = linspace(0,t_l,t_l*50)';
x0 = [-2,0,0,0];

y = lsim(sys, zeros(length(t),1), t, x0');

pos   = y(:,1);
d_pos = y(:,2);
ang   = y(:,3);
d_ang = y(:,4);

visSim_cart_pole([t,pos,ang],0);

figure
hold on
plot(t,pos,t,ang)
legend('pos (m)','ang (rad)');
title('Output of Linearized System');
xlabel('Time (sec)');

figure
u = K*y';
plot(t,u)
title('Control Input (N)');
xlabel('Time (sec)');

x_int  = trapz(t,abs(pos));
dx_int = trapz(t,abs(d_pos));
a_int  = trapz(t,abs(ang));
da_int = trapz(t,abs(d_ang));

w = [1 0 10 0];
X = [x_int; dx_int; a_int; da_int];
C = w*X;

C_max = 37.3947;
P = 1.05*C_max - C;

fprintf("\nPerformance: %f\n\n",P);

end
