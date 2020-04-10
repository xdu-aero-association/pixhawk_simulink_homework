clear;
%模型初始参数
ModelInit_RPM=557.1420;%电机初始转速（单位：rad/s）

%电机参数
ModelParam_motorCr=1148*2;    %电机转速-油门曲线斜率（单位：rad/s）
ModelParam_motorWb=-141.4;    %电机转速-油门曲线常数项(单位：rad/s）
ModelParam_motorT= 0.02;    %电机惯性时间常数（单位：s）
ModelParam_motorJm = 0.0001287; %电机螺旋桨转动惯量（单位：kg.m^2）

%螺旋桨参数
%螺旋桨反扭矩系数Cm（单位：N.m/(rad/s)^2）
%定义：力矩M（单位N.m），螺旋桨转速w（单位：rad/s），M=Cm*w^2
ModelParam_rotorCm=1.779e-07;
%螺旋桨拉力系数Ct（单位：N/(rad/s)^2）
%定义：拉力T（单位：N），T=Ct**w^2
ModelParam_rotorCt= 1.105e-05;

%阻力系数Cd
%定义：阻力D（N),前飞速度V（m/s），D=Cd*V^2
ModelParam_uavCd = 0.073 ;%阻力系数（单位： N/(m/s)^2）
ModelParam_uavMass=1.4; %多旋翼质量（单位：kg）
ModelParam_uavR=0.225; %多旋翼机架半径（单位：m）
ModelParam_uavJxx =0.0211;%x轴转动惯量（单位： kg.m^2）
ModelParam_uavJyy =0.0219;%y轴转动惯量（单位： kg.m^2）
ModelParam_uavJzz =0.0366;%z轴转动惯量（单位： kg.m^2）
ModelParam_uavJ= [ModelParam_uavJxx,0,0;0,ModelParam_uavJyy,0;0,0,ModelParam_uavJzz];

ModelParam_envGravityAcc=9.8;
