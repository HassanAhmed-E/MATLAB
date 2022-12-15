function[] = projectilemotionplot(ini_vel_0,step,ini_vel_n,angle)

for u=ini_vel_0:step:ini_vel_n %Velocity Range
    theta=pi/4; %Theta in radian
    g=9.81; %acceleration due to gravity
    range=u^2*sin(2*theta)/g; %max range
    for i= 1:range
        y(u,i)=i*tan(theta)-(g*i^2)/(2*u^2*(cos(theta))^2);
        if y(u,i)<0
            y(u,i)=[];
            break;
        end
        i=i+1;
    end
    plot(y(u,1:range));
    legends{u/5} = sprintf('Velocity at %d', u);
    hold on;
end
legends(1)=[]
legend(legends)
title('Projectile Motion');
xlabel('Range');
ylabel('Height');
hold off;
end