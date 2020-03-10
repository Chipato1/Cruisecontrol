package myWork.driverStimuli;

static class TestCase2 {
	@get
	boolean finish = false;
	
	@get
	boolean testOk = true;
	
	@get
	boolean CC_On = false;
	
	@get
	boolean CC_Off = false;
	
	@set
	boolean cc_active = false;
	
	integer counter = 0;
	
	/**
	 * Testcase 2
	 * Driver accelerates to 50 km/h
	 */
	public void run() {
		counter = counter + 1;
		
		switch (counter) {
		    case 1: {
		         CC_On = true;   
		    }
		    case 1000: {
		    	CC_On = false;
		    	CC_Off = true;
		    }
		    case 2000: {
		    	CC_Off = false;
		    	finish = true;
		    	if (cc_active == true) {
		    		testOk = false;
		    	}
		    	
		    }
		    default: {
		        // do nothing
		    }
		}
	}
}