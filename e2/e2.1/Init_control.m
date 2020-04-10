clear

path('./icon/',path);
Init;

%constant parameters
RAD2DEG=57.2957795;
DEG2RAD=0.0174533;

%Initial condition
ModelInit_PosE=[0,0,-100];%初始位置
ModelInit_VelB=[0,0,0];%初始速度
ModelInit_AngEuler=[0,0,0]; %初始欧拉角
ModelInit_RateB=[0,0,0]; %初始角速度
ModelInit_RPM=557.1420;%电机初始转速

%Model Parameter
ModelParam_uavMass=1.4; %多旋翼质量
ModelParam_uavR=0.225;%机身半径
ModelParam_uavJxx = 0.0211;%x主轴转动惯量
ModelParam_uavJyy = 0.0219;%y主轴转动惯量
ModelParam_uavJzz = 0.0366;%z主轴转动惯量
%转动惯量矩阵
ModelParam_uavJ= [ModelParam_uavJxx,0,0;0,ModelParam_uavJyy,0;0,0,ModelParam_uavJzz];
ModelParam_uavDearo = 0;  %气动中心与重心竖直方向位置差 

ModelParam_motorCr=1148;%电机油门-速度曲线斜率
ModelParam_motorWb=-141.4;%电机油门-速度曲线零点
ModelParam_motorT= 0.02; %电机惯性环节常数
ModelParam_motorJm =0.0001287;%电机转子+螺旋桨转动惯量

ModelParam_rotorCm=1.779e-07;%螺旋桨扭矩系数
ModelParam_rotorCt=1.105e-05;%螺旋桨拉力系数

%悬停油门的计算公式
%THR=(sqrt(ModelParam_uavMass*9.8/4/ModelParam_rotorCt)-ModelParam_motorWb)/ModelParam_motorCr;
