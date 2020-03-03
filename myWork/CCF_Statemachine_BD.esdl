package myWork;
import resources.DriverMessages;
import resources.CarMessages;

static class CCF_Statemachine_BD
reads DriverMessages.powerDriver, DriverMessages.brakeDriver, DriverMessages.CC_Off, DriverMessages.CC_On, DriverMessages.targetSpeedUp, DriverMessages.targetSpeedDown, CarMessages.v {
	CCF_Statemachine CCF_Statemachine_instance;

	@thread
	@generated("blockdiagram")
	public void calc() {
		CCF_Statemachine_instance.cCF_StatemachineStatemachineTrigger(); // Main/calc 1
		CCF_Statemachine_instance.powerDriver = DriverMessages.powerDriver; // Main/calc 2
		CCF_Statemachine_instance.brakeDriver = DriverMessages.brakeDriver; // Main/calc 3
		CCF_Statemachine_instance.CC_On = DriverMessages.CC_On; // Main/calc 4
		CCF_Statemachine_instance.CC_Off = DriverMessages.CC_Off; // Main/calc 5
		CCF_Statemachine_instance.targetSpeedUp = DriverMessages.targetSpeedUp; // Main/calc 6
		CCF_Statemachine_instance.targetSpeedDown = DriverMessages.targetSpeedDown; // Main/calc 7
		CCF_Statemachine_instance.v_ist = CarMessages.v; // Main/calc 8
	}
}