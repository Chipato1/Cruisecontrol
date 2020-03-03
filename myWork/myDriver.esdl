package myWork;
import resources.DriverMessages;

static class myDriver
writes DriverMessages.powerDriver, DriverMessages.brakeDriver {
	characteristic real p = 0.0;

	@generated("blockdiagram")
	@thread
	public void drive() {
		DriverMessages.powerDriver = p; // Main/drive 1
		DriverMessages.brakeDriver = 0.0; // Main/drive 2
	}
}