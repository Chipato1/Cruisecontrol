package myWork;

import resources.DriverMessages;
import resources.CarMessages;
import myWork.driverStimuli.TestCase1;

static class DriverTest 
reads CarMessages.v
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.targetSpeedUp, DriverMessages.targetSpeedDown, DriverMessages.CC_On, DriverMessages.CC_Off {	
	integer test = 1;
	
	@thread
	public void drive() {
		switch (test) {
		    case 1: {
		    	DriverMessages.powerDriver = TestCase1.run(CarMessages.v);
		    	
		    	if (TestCase1.isFinished() == true) {
		    		test = test + 1;
		    	}
		    }
		    default: {
		        DriverMessages.powerDriver = 0.0;
		        DriverMessages.brakeDriver = 0.0;
		    }
		}
	}
}