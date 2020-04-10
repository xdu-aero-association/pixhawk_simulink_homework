%Initial condition
ModelInit_PosE=[0,0,0];
ModelInit_VelB=[0,0,0];
ModelInit_AngEuler=[0,0,0];
ModelInit_RateB=[0,0,0];

% Motor RPM
ModelInit_RPM=0;

%Model Parameter
ModelParam_motorMinThr=0.05;
ModelParam_motorCr=1148;
ModelParam_motorWb=-141.4;
ModelParam_motorT= 0.02;%0.0261;
ModelParam_motorJm =0.0001287;
ModelParam_rotorCm=1.779e-07;
ModelParam_rotorCt=1.105e-05;
ModelParam_uavType = int8(0); %整型 0表示叉字型，1表示+字型
ModelParam_uavMotNumbs = int8(4);
ModelParam_ControlMode = int8(1); %整型 1表示Auto模式，0表示Manual模式
%ModelParam_uavCtrlEn = int8(0);
ModelParam_uavCd = 0.073;
ModelParam_uavCCm = [0.0055;0.002;0.002];
ModelParam_uavMass=1.4;
ModelParam_uavDearo = 0.05;
ModelParam_uavR=0.225;
ModelParam_uavJxx = 0.0211;
ModelParam_uavJyy = 0.0219;
ModelParam_uavJzz = 0.0366;
ModelParam_uavJ= [ModelParam_uavJxx,0,0;0,ModelParam_uavJyy,0;0,0,ModelParam_uavJzz];
ModelParam_envGravityAcc=9.8;
ModelParam_GlobalNoiseGainSwitch =1;

%Environment Parameter
ModelParam_envLongitude = 115.515902;
ModelParam_envLatitude = 40.388552;
ModelParam_GPSLatLong = [ModelParam_envLatitude ModelParam_envLongitude];
ModelParam_envAltitude = -50;     %参考高度，负值



