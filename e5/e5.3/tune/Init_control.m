clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% e5.3/AttitudeControl_tune %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
path('.\icon\',path);
%模型参数 运行模型初始化文件icon/init.m
Init;

%Initial condition
ModelInit_PosE=[0,0,-100];
ModelInit_VelB=[0,0,0];
ModelInit_AngEuler=[0,0,0];
ModelInit_RateB=[0,0,0];
ModelInit_RPM=557.1420;
ModelParam_envGravityAcc=9.8;
