load MavLinkStruct;
%load path;

%PID Parameters
Kp_RP_ANGLE =6.5;
Kp_RP_AgngleRate = 0.10;
Ki_RP_AgngleRate = 0.02;
Kd_RP_AgngleRate = 0.001;

Kp_YAW_AngleRate = 0.3;
Ki_YAW_AngleRate = 0.1;
Kd_YAW_AngleRate = 0.00;
%integral saturation
Saturation_I_RP_Max=0.3;
Saturation_I_RP_Min=-0.3;
Saturation_I_Y_Max=0.2;
Saturation_I_Y_Min=-0.2;
%thrust when UAV hover
THR_HOVER=0.609;
%max control angle
%default 35deg
MAX_CONTROL_ANGLE_ROLL = 35;
MAX_CONTROL_ANGLE_PITCH  = 35;
%max control angle rate
MAX_CONTROL_ANGLE_RATE_PITCH = 220;
MAX_CONTROL_ANGLE_RATE_ROLL = 220;
MAX_CONTROL_ANGLE_RATE_Y = 200;

%Initial condition
ModelInit_PosE=[0,0,0]; %初始位置
ModelInit_VelB=[0,0,0]; %初始速度
ModelInit_AngEuler=[0,0,0]; %初始欧拉角
ModelInit_RateB=[0,0,0];    %初始角速度
ModelParam_uavMass=1.4;     %多旋翼质量
ModelParam_uavJxx = 0.0211; %x主轴转动惯量
ModelParam_uavJyy = 0.0219; %y主轴转动惯量
ModelParam_uavJzz = 0.0366; %z主轴转动惯量
%转动惯量矩阵
ModelParam_uavJ= [ModelParam_uavJxx,0,0;...
    0,ModelParam_uavJyy,0;...
    0,0,ModelParam_uavJzz];


ModelInit_RPM=0; %电机初始转速
ModelParam_uavType = int8(3); %这里是四旋翼X型，具体定义见文档"机型定义文档.docx"
ModelParam_uavMotNumbs = int8(4);  %电机数量
ModelParam_uavR=0.225;   %机身半径
ModelParam_motorCr=1148; %电机油门-速度曲线斜率
ModelParam_motorWb=-141.4;  %电机油门-速度曲线零点
ModelParam_motorT= 0.02;%0.0261;  %电机惯性环节常数
ModelParam_motorJm =0.0001287;    %电机转子+螺旋桨转动惯量
ModelParam_rotorCm=1.779e-07;    %螺旋桨扭矩系数
ModelParam_rotorCt=1.105e-05;    %螺旋桨拉力系数
ModelParam_motorMinThr=0.05;     %电机油门死区

ModelParam_uavCd = 0.073;   %阻力系数
ModelParam_uavCCm = [0.01 0.01 0.0055]; %阻尼系数向量
ModelParam_uavDearo = 0.12;  %气动中心与重心竖直方向位置差 

ModelParam_GlobalNoiseGainSwitch =1;   %噪声水平增益

%Environment Parameter
ModelParam_envLongitude = 116.259368300000;  %全球定位经度
ModelParam_envLatitude = 40.1540302;         %全球定位纬度
ModelParam_GPSLatLong = [ModelParam_envLatitude ModelParam_envLongitude];  %经纬度
ModelParam_envAltitude = -41.5260009765625;     %参考高度，向下为正
ModelParam_BusSampleRate = 0.001;            %模型采样率

