package myWork;
import resources.DriverMessages;
import resources.CarMessages;
import resources.CCF_Messages;
import resources.SMMessages;

static class CCF_Statemachine_BD
reads DriverMessages.powerDriver, DriverMessages.brakeDriver, CarMessages.v, DriverMessages.targetSpeedUp, DriverMessages.CC_Off, DriverMessages.targetSpeedDown, DriverMessages.CC_On
writes DriverMessages.targetSpeedUp, DriverMessages.CC_Off, DriverMessages.targetSpeedDown, DriverMessages.CC_On, CCF_Messages.gaspedal_cc, CCF_Messages.brakepedal_cc, SMMessages.vTarget, SMMessages.ccActive {
	CCF_Statemachine CCF_Statemachine_instance;

	@thread
	@generated("blockdiagram")
	public void calc() {
		CCF_Statemachine_instance.cCF_StatemachineStatemachineTrigger(); // Main/calc 1
		CCF_Statemachine_instance.powerDriver = DriverMessages.powerDriver; // Main/calc 2
		CCF_Statemachine_instance.brakeDriver = DriverMessages.brakeDriver; // Main/calc 3
		CCF_Statemachine_instance.v_ist = CarMessages.v; // Main/calc 4
		DriverMessages.CC_Off = CCF_Statemachine_instance.CC_Off; // Main/calc 5
		DriverMessages.CC_On = CCF_Statemachine_instance.CC_On; // Main/calc 6
		DriverMessages.targetSpeedUp = CCF_Statemachine_instance.targetSpeedUp; // Main/calc 7
		DriverMessages.targetSpeedDown = CCF_Statemachine_instance.targetSpeedDown; // Main/calc 8
		CCF_Statemachine_instance.targetSpeedDown = DriverMessages.targetSpeedDown; // Main/calc 9
		CCF_Statemachine_instance.targetSpeedUp = DriverMessages.targetSpeedUp; // Main/calc 10
		CCF_Statemachine_instance.CC_On = DriverMessages.CC_On; // Main/calc 11
		CCF_Statemachine_instance.CC_Off = DriverMessages.CC_Off; // Main/calc 12
		CCF_Messages.gaspedal_cc = CCF_Statemachine_instance.powerDriver; // Main/calc 13
		CCF_Messages.brakepedal_cc = CCF_Statemachine_instance.brakeDriver; // Main/calc 14
		SMMessages.vTarget = CCF_Statemachine_instance.v_soll; // Main/calc 15
		SMMessages.ccActive = CCF_Statemachine_instance.CC_active; // Main/calc 16
	}
}