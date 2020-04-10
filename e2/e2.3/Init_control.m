clear

path('./icon/',path);
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

%Model Parameter
ModelParam_uavMass=1.4;
ModelParam_uavR=0.225;
ModelParam_uavJxx = 0.0211;
ModelParam_uavJyy = 0.0219;
ModelParam_uavJzz = 0.0366;
ModelParam_uavJ= [ModelParam_uavJxx,0,0;0,ModelParam_uavJyy,0;0,0,ModelParam_uavJzz];
ModelParam_uavDearo = 0.00;

ModelParam_motorCr=1148;
ModelParam_motorWb=-141.4;
ModelParam_motorT= 0.02;
ModelParam_motorJm =0.0001287;

ModelParam_rotorCm=1.779e-07;
ModelParam_rotorCt=1.105e-05;

%THR=(sqrt(ModelParam_uavMass*9.8/4/ModelParam_rotorCt)-ModelParam_motorWb)/ModelParam_motorCr;
