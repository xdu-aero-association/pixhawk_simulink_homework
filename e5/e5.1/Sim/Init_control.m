clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% e5_1/AttitudeControl_Sim %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
path('./icon/',path);
%模型参数 运行模型初始化文件icon/init.m
Init;

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

Kp_YAW_AngleRate = 0.3;
Ki_YAW_AngleRate = 0.1;
Kd_YAW_AngleRate = 0.00;
%积分限幅
Saturation_I_RP_Max=0.3;
Saturation_I_RP_Min=-0.3;
Saturation_I_Y_Max=0.2;
Saturation_I_Y_Min=-0.2;
%悬停油门
THR_HOVER=0.6085;
%最大控制角度，单位度
MAX_CONTROL_ANGLE_ROLL = 35;
MAX_CONTROL_ANGLE_PITCH  = 35;
%最大控制角速度
MAX_CONTROL_ANGLE_RATE_PITCH = 220;
MAX_CONTROL_ANGLE_RATE_ROLL = 220;
MAX_CONTROL_ANGLE_RATE_Y = 200;
