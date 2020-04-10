close all
clc
clear

load AccRaw
g=1;
m=length(AccRaw);

y_dat = g*ones(m,1); %  
p0 = [1 1 1 0.0 0.0 0.0]';  
p_init = [1.0 1.0 1.0 0.1 0.1 0.1]';

y_raw = calFunc(AccRaw,p0);%未校正时的加速度值
y_raw = y_raw(:);
r_raw = y_dat-y_raw;
p_fit = lm('calFunc',p_init,AccRaw,y_dat);
y_lm = calFunc(AccRaw,p_fit);%校正后的加速度值
y_lm = y_lm(:);
r_lm = y_dat-y_lm;

kx = p_fit(1);
ky = p_fit(2);
kz = p_fit(3);
bx = p_fit(4);
by = p_fit(5);
bz = p_fit(6);

Ka1=[kx 0 0;0 ky 0;0 0 kz]
ba1=[bx by bz]'
save('calP1','Ka1','ba1')


figure
bar([r_raw'*r_raw,r_lm'*r_lm])
grid on;
set(gca,'XTickLabel',{'raw','lm'});
ylabel('指标');

t=1:m;
figure
title('加速度计校正')
plot(t,r_raw,t,r_lm)
legend('未校正','已校正-LM')
xlabel('测量值采样数')
ylabel('残差')
