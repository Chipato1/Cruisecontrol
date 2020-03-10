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

		Assert.assertTrue(instance.currentState==2.0);
	}
	
	@Test
	public void test2(){
		instance.CC_On=true;
		instance.cCF_StatemachineStatemachineTrigger();
		
		instance.CC_Off=true;
		instance.cCF_StatemachineStatemachineTrigger();

		Assert.assertTrue(instance.currentState==0.0);
	}
	
	@Test
	public void test3(){
		instance.CC_On=true;
		instance.v_ist=40.0;
		instance.cCF_StatemachineStatemachineTrigger();
		
		instance.targetSpeedUp=true;
		instance.cCF_StatemachineStatemachineTrigger();
		
		Assert.assertTrue(instance.currentState==2.0 && instance.v_soll==41.0);
	}
	
	@Test
	public void test4(){
		instance.CC_On=true;
		instance.v_ist=40.0;
		instance.cCF_StatemachineStatemachineTrigger();
		
		instance.targetSpeedDown=true;
		instance.cCF_StatemachineStatemachineTrigger();
		
		Assert.assertTrue(instance.currentState==2.0 && instance.v_soll==39.0);
	}
	
	@Test
	public void test5(){
		instance.CC_On=true;
		instance.v_ist=40.0;
		instance.cCF_StatemachineStatemachineTrigger();
		
		instance.brakeDriver=1.0;
		instance.cCF_StatemachineStatemachineTrigger();
		
		Assert.assertTrue(instance.currentState==0.0);
	}

}