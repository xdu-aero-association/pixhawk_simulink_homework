clear
%%%%%%%%%%%%%%%%%%%%
%%% ATTCtrl_tune %%%
%%%%%%%%%%%%%%%%%%%%
path('./icon/',path);
%模型参数 运行模型初始化文件icon/init.m
Init;

%constant parameters
RAD2DEG=57.2957795;
DEG2RAD=0.0174533;
%Initial condition
ModelInit_PosE=[0,0,-100];
ModelInit_VelB=[0,0,0];
ModelInit_AngEuler=[0,0,0];
ModelInit_RateB=[0,0,0];
ModelInit_RPM=557.1420;

%PID参数
Kp_RP_ANGLE =6.5;
Kp_RP_AgngleRate = 0.10;
Ki_RP_AgngleRate = 0.02;
Kd_RP_AgngleRate = 0.001;

Kp_YAW_AngleRate = 0.3;
Ki_YAW_AngleRate = 0.01;
Kd_YAW_AngleRate = 0.00;

Saturation_I_RP_Max=0.3;
Saturation_I_RP_Min=-0.3;
Saturation_I_Y_Max=0.2;
Saturation_I_Y_Min=-0.2;
%最大控制角度，单位度
MAX_CONTROL_ANGLE_ROLL = 35;
MAX_CONTROL_ANGLE_PITCH  = 35;
%最大控制角速度
MAX_CONTROL_ANGLE_RATE_PITCH = 220;
MAX_CONTROL_ANGLE_RATE_ROLL = 220;
MAX_CONTROL_ANGLE_RATE_Y = 200;

%THR=(sqrt(ModelParam_uavMass*9.8/4/ModelParam_rotorCt)-ModelParam_motorWb)/ModelParam_motorCr
THR=0.6085;%悬停状态时的油门值
