clear
%%%%%%%%%%%%%%%%
%%% e8.1_Sim %%%
%%%%%%%%%%%%%%%%
path('./icon/',path);
%模型参数 运行模型初始化文件icon/init.m
Init;%添加了未封装模型的一些参数

%constant parameters
RAD2DEG=57.2957795;
DEG2RAD=0.0174533;
%Initial condition
ModelInit_PosE=[0,0,0];
ModelInit_VelB=[0,0,0];
ModelInit_AngEuler=[0,0,0];
ModelInit_RateB=[0,0,0];
ModelInit_RPM=0;
%PID参数
Kp_PITCH_ANGLE =6.5;
Kp_PITCH_AgngleRate = 0.1;
Ki_PITCH_AgngleRate = 0.02;
Kd_PITCH_AgngleRate = 0.001;
Kp_ROLL_ANGLE =6.5;
Kp_ROLL_AgngleRate = 0.1;
Ki_ROLL_AgngleRate = 0.02;
Kd_ROLL_AgngleRate = 0.001;

Kp_YAW_ANGLE = 3;
Kp_YAW_AngleRate = 0.5;
Ki_YAW_AngleRate = 0.01;
Kd_YAW_AngleRate = 0.00;

%位置控制
Kpxp=1.0;
Kpyp=1.0;
Kpzp=4.0;
Kvxp=3.0;Kvxi=0.1;Kvxd=0.01;
Kvyp=3.0;Kvyi=0.1;Kvyd=0.01;
Kvzp=0.45;Kvzi=0.01;Kvzd=0.005;

Saturation_I_RP_Max=0.3;
Saturation_I_RP_Min=-0.3;
Saturation_I_Y_Max=0.2;
Saturation_I_Y_Min=-0.2;
Saturation_I_ah=3.43;%0.5*g*tan(MAX_CONTROL_ANGLE_ROLL*DEG2RAD);
Saturation_I_az=5;%

%最大控制角度，单位度
MAX_CONTROL_ANGLE_ROLL = 35;
MAX_CONTROL_ANGLE_PITCH  = 35;
%最大控制角速度
MAX_CONTROL_ANGLE_RATE_PITCH = 220;
MAX_CONTROL_ANGLE_RATE_ROLL = 220;
MAX_CONTROL_ANGLE_RATE_Y = 200;

MAX_CONTROL_VELOCITY_XY = 5;
MAX_CONTROL_VELOCITY_Z = 3;
MAX_MAN_THR=0.9;
MIN_MAN_THR=0.05;
THR_HOVER=0.609;

