package myWork;
@generated("statemachine")
type CCF_StatemachineStatemachineStates is enum {
	passive,
	active,
	off
};

class CCF_Statemachine {
	@generated("statemachine")
	public void cCF_StatemachineStatemachineTrigger() triggers CCF_StatemachineStatemachine;

	@generatedStateMachine
	statemachine CCF_StatemachineStatemachine using CCF_StatemachineStatemachineStates {
		start passive;

		state passive {
			transition brakepedal_drv > 0.0 to off;
			transition v_ist < v_soll to active;
		}

		state active {
			transition breakpedal_drv > 0.0 to off;
			transition gaspedal_drv > 0.0 to passive;
			transition CC_Off == true to off;
		}

		state off {
			transition targetSpeedUp == true to active;
			transition targetSpeedDown == true to active;
			transition CC_On == true to active;
		}
	}
}