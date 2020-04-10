 clear;
 [datapoints, numpoints] = px4_read_binary_file('e4_A.bin');
ax=datapoints(1,:);%单位：m/s2
ay=datapoints(2,:);
az=datapoints(3,:);
gx=datapoints(4,:);%单位：rad/s
gy=datapoints(5,:);
gz=datapoints(6,:);
phi_px4=datapoints(7,:);%PX4中解算的横滚角，单位：rad
theta_px4=datapoints(8,:);%PX4中解算的横滚角，单位：rad
timestamp=datapoints(9,:);%时间戳，单位：us

n=length(ax);%采集数据个数
Ts=zeros(1,n);%时间间隔
Ts(1)=0.004;

for k=1:n-1
    Ts(k+1)=(timestamp(k+1)-timestamp(k))*0.000001;
end

theta_am=zeros(1,n);%加速度计算的theta角
phi_am=zeros(1,n);%加速度计算的phi角
theta_gm=zeros(1,n);%陀螺仪积分的theta角
phi_gm=zeros(1,n);%陀螺仪积分的phi角
theta_cf=zeros(1,n);%互补滤波得到的theta角
phi_cf=zeros(1,n);%互补滤波得到的phi角
tao = 0.1;
for k=2:n
    %使用加速度计数据计算欧拉角
    g=sqrt(ax(k)*ax(k)+ay(k)*ay(k)+az(k)*az(k));
    theta_am(k)=asin(ax(k)/g);%公式（9.2）
    phi_am(k)=-asin(ay(k)/(g*cos(theta_am(k))));
    %使用陀螺仪数据计算欧拉角
    theta_gm(k)=theta_gm(k-1)+gy(k)*Ts(k);
    phi_gm(k)=phi_gm(k-1)+gx(k)*Ts(k);
    %互补滤波
    theta_cf(k)=tao/(tao+Ts(k))*(theta_cf(k-1)+gy(k)*Ts(k))+Ts(k)/(tao+Ts(k))*theta_am(k);%公式（9.15）
    phi_cf(k)=tao/(tao+Ts(k))*(phi_cf(k-1)+gx(k)*Ts(k))+Ts(k)/(tao+Ts(k))*phi_am(k);%公式（9.17）
end

t=timestamp*0.000001;
rad2deg=180/pi;%弧度转换成角度系数
figure(1)
subplot(2,1,1)
plot(t,theta_gm*rad2deg,'g',t,theta_am*rad2deg,'b',t,theta_cf*rad2deg,'r')
legend('gyro','acc','cf');
ylabel('theta(deg)')
title('俯仰角')
subplot(2,1,2)
plot(t,theta_cf*rad2deg,'r',t,theta_px4*rad2deg,'k')
legend('cf','px4');
xlabel('t(s)')
ylabel('theta(deg)')


figure(2)
subplot(2,1,1)
plot(t,phi_gm*rad2deg,'g',t,phi_am*rad2deg,'b',t,phi_cf*rad2deg,'r')
legend('gyro','acc','cf');
ylabel('theta(deg)')
title('横滚角')
subplot(2,1,2)
plot(t,phi_cf*rad2deg,'r',t,phi_px4*rad2deg,'k')
legend('cf','px4');
xlabel('t(s)')
ylabel('theta(deg)')
