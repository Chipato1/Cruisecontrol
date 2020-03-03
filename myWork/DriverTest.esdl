package myWork;

import myWork.driverStimuli.TestCase1;

static class DriverTest {
	integer test = 1;
	
	@thread
	public void drive() {
		switch (test) {
		    case 1: {
		    	TestCase1.run();
		    	
		    	if (TestCase1.isFinished() == true) {
		    		test = test + 1;
		    	}
		    }
		    default: {
		        
		    }
		}
	}
}