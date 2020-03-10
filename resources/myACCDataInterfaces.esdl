package resources;

data interface DriverMessages {
	real powerDriver = 0.0;
	real brakeDriver = 0.0;
	boolean targetSpeedUp = false;
	boolean targetSpeedDown = false;
	
	boolean CC_On = false;
	boolean CC_Off = false;
}

data interface CCF_Messages {
	real gaspedal_cc = 0.0;
	real brakepedal_cc = 0.0;
}

data interface SMMessages{
	real vTarget=0.0;
	boolean ccActive=false;
}