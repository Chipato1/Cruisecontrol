package myWork.driverStimuli;

static class TestCase1 {
	boolean finish = false;
	real power = 0.0;
	
	public boolean isFinished() {
		return finish;
	}
	
	/**
	 * Testcase 1
	 * Acceleration to 50 km/h
	 */
	public real run(real currentVelocity) {
		
		if (currentVelocity < 50.0) {
			power = 100.0;		
		}
		else {
			power = 0.0;
			finish = true;
		}
		
		return power;
	}
}