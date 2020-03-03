package myWork.driverStimuli;

static class TestCase1 {
	boolean finish = false;
	
	public boolean isFinished() {
		return finish;
	}
	
	public void run() {
		// Todo: Run Test
		
		// If testcase finished, then set finished to true
		finish = true;
	}
}