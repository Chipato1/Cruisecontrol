package myWork;
import resources.CarMessages;
import resources.DriverMessages;

static class myACC
reads resources.DriverMessages.powerDriver, resources.DriverMessages.brakeDriver
writes resources.CarMessages.power, resources.CarMessages.brake {
	@generated("blockdiagram")
	@thread
	public void control() {
		if ((DriverMessages.powerDriver > 0.0) || (0.0 < DriverMessages.brakeDriver)) {
			CarMessages.power = DriverMessages.powerDriver; // Main/control 1/if-then 1
			CarMessages.brake = DriverMessages.brakeDriver; // Main/control 1/if-then 2
		} else {
			CarMessages.power = 0.0; // Main/control 1/if-else 1
			CarMessages.brake = 0.0; // Main/control 1/if-else 2
		} // Main/control 1
	}
}