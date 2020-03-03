package myWork;
import resources.DriverMessages;

static class DriverGUI
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.targetSpeedUp, DriverMessages.targetSpeedDown, DriverMessages.CC_On, DriverMessages.CC_Off {
	characteristic boolean ccOn = false;
	characteristic boolean ccOff = false;
	characteristic real power = 0.0;
	characteristic boolean speedUp = false;
	characteristic boolean speedDown = false;
	characteristic real braking = 0.0;

	@generated("blockdiagram")
	@thread
	public void drive() {
		DriverMessages.powerDriver = power; // Main/drive 1
		DriverMessages.targetSpeedUp = speedUp; // Main/drive 2
		DriverMessages.targetSpeedDown = speedDown; // Main/drive 3
		DriverMessages.CC_Off = ccOff; // Main/drive 4
		DriverMessages.brakeDriver = braking; // Main/drive 5
		DriverMessages.CC_On = ccOn; // Main/drive 6
	}
}