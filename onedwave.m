n = 100;
nit = 1000;
u = zeros(n+1,1);
x = zeros(n+1,1);
deltax = 2.d0/double(n);
for i = 1:n+1
    x(i) = -1.d0 + 2.d0*double(i-1)/double(n);
    u(i) = exp(-60.d0*x(i)^2);
end
deltat = .05*deltax;
for k = 1:nit
    for i = 2:n
        unew(i) = u(i) + (deltat/deltax)*(u(i+1)-u(i));
    end
    for i = 2:n
        u(i) = unew(i);
    end
    plot(x,u);
    axis([-1 1 0 1])
    pause(.001);
end