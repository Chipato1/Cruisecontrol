package myWork;
import resources.DriverMessages;

static class myDriver
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.CC_On, DriverMessages.CC_Off, DriverMessages.targetSpeedDown, DriverMessages.targetSpeedUp {
	characteristic real power = 0.0;
	characteristic real braking = 0.0;
	characteristic boolean speedUp = false;
	characteristic boolean speedDown = false;
	characteristic boolean ccOn = false;
	characteristic boolean ccOff = false;

	@generated("blockdiagram")
	@thread
	public void drive() {
		DriverMessages.powerDriver = power; // Main/drive 1
		DriverMessages.brakeDriver = braking; // Main/drive 2
		DriverMessages.targetSpeedUp = speedUp; // Main/drive 3
		DriverMessages.targetSpeedDown = speedDown; // Main/drive 4
		DriverMessages.CC_On = ccOn; // Main/drive 5
		DriverMessages.CC_Off = ccOff; // Main/drive 6
	}
}