package myWork;
import resources.DriverMessages;

static class myDriver
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.CC_On, DriverMessages.CC_Off, DriverMessages.targetSpeedDown, DriverMessages.targetSpeedUp {
	characteristic real p = 0.0;
	characteristic boolean ccOn = false;
	characteristic boolean ccOff = false;
	characteristic boolean targetSpeedUp = false;
	characteristic boolean targetSpeedDown = false;
	

	@generated("blockdiagram")
	@thread
	public void drive() {
		DriverMessages.powerDriver = p; // Main/drive 1
		DriverMessages.brakeDriver = 0.0; // Main/drive 2
		DriverMessages.CC_Off = ccOff;
		DriverMessages.CC_On = ccOn;
		DriverMessages.targetSpeedDown = targetSpeedDown;
		DriverMessages.targetSpeedUp = targetSpeedUp;
		
	}
	/*
	@thread
	public void setCC_On() {
		DriverMessages.CC_Off = false;
		DriverMessages.CC_On = true;
	}
	
	@thread
	public void setCC_Off() {
		DriverMessages.CC_On = false;
		DriverMessages.CC_Off = true;
	}
	
	@thread
	public void setTargetSpeedUp() {
		DriverMessages.targetSpeedDown = false;
		DriverMessages.targetSpeedUp = true;
	}
	
	@thread
	public void setTargetSpeedDown() {
		DriverMessages.targetSpeedUp = false;
		DriverMessages.targetSpeedDown = true;
	}
	* */
}