package myWork;

import resources.DriverMessages;
import resources.SMMessages;
import resources.CarMessages;
import myWork.driverStimuli.TestCase1;
import myWork.driverStimuli.TestCase2;

static class DriverTest 
reads CarMessages.v, SMMessages.ccActive
writes DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.targetSpeedUp, DriverMessages.targetSpeedDown, DriverMessages.CC_On, DriverMessages.CC_Off {	
	integer test = 1;
	boolean ccon = false;
	
	@thread
	public void drive() {
		switch (test) {
		    case 1: {
		    	DriverMessages.powerDriver = TestCase1.run(CarMessages.v);
		    	
		    	if (TestCase1.isFinished() == true) {
		    		test = test + 1;
		    	}
		    }
		    case 2: {
		    	TestCase2.cc_active = SMMessages.ccActive;
		    	TestCase2.run();
		    	ccon = TestCase2.CC_On;
		    	DriverMessages.targetSpeedUp = true;
		    	DriverMessages.powerDriver = 40.0;
		    	DriverMessages.CC_Off = TestCase2.CC_Off;
		    	
		    	if (TestCase2.finish == true) {
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