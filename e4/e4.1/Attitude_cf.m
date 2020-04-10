function [ phi_cf,theta_cf ] =Attitude_cf(dt,z,phi_cf_k,theta_cf_k,tao)
%Attitude_cf 互补滤波解算姿态。
%输入：
%   dt:时间间隔,单位：s
%   z:测量值[gx,gy,gz,ax,ay,az],单位：rad/s,m/s2
%   phi_cf_k,theta_cf_k:上一时刻的角度值，单位：rad
%   tao:滤波系数
%输出：
%   phi_cf,theta_cf:姿态角，单位：rad

    gx=z(1);gy=z(2);
    ax=z(4);ay=z(5);az=z(6);
    
    g=sqrt(ax*ax+ay*ay+az*az);
    theta_am=asin(ax/g);%公式（9.2）
    phi_am=-asin(ay/(g*cos(theta_am)));
    
    theta_cf=tao/(tao+dt)*(theta_cf_k+gy*dt)+dt/(tao+dt)*theta_am;%公式（9.15）
    phi_cf=tao/(tao+dt)*(phi_cf_k+gx*dt)+dt/(tao+dt)*phi_am;%公式（9.17）
end

