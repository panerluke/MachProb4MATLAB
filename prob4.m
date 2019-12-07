function prob4(h, v, theta, ax, ay)

if h < 0
    error("The height should be above the ground!")
elseif ay >= 0
    error("There would be no free fall!")
end

t = 0:0.001:10000;

y = [(1/2)*ay, v*sind(theta), h];
y = polyval(y, t);
y  = y(y >= 0);

x = [(1/2)*ax, v*cosd(theta), 0];
x = polyval(x, t);
x = x(1:(length(y)));

xi = v*t*cosd(theta);
xi = xi(1:(length(y)));

plot(x, y)
grid on
hold on
plot(xi, y, '--')
legend('non-ideal motion', 'ideal motion')
title('Projectile trajectory')
xlabel('Horizontal distance in m')
ylabel('Vertical distance in m')
hold off

end