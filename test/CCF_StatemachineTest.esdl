package test;

import assertLib.Assert;
import myWork.CCF_Statemachine;

static class CCF_StatemachineTest{
	
	CCF_Statemachine instance;
	real currentState;
	
	@Test
	public void test1(){
		instance.CC_On=true;
		instance.cCF_StatemachineStatemachineTrigger();

		Assert.assertTrue(instance.CC_On==false && instance.currentState==2.0);
	}
	
	@Test
	public void test2(){
		instance.CC_On=true;
		instance.cCF_StatemachineStatemachineTrigger();
		
		instance.CC_Off=true;
		instance.cCF_StatemachineStatemachineTrigger();

		Assert.assertTrue(instance.CC_Off==false && instance.currentState==0.0);
	}
	

}