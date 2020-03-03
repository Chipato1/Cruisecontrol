package myWork;

@generated("statemachine")
type CCF_StatemachineStatemachineStates is enum {
	passive,
	active,
	off
};

class CCF_Statemachine {
	@set
	private real powerDriver = 0.0;
	@set
	private real brakeDriver = 0.0;
	@set
	@get
	private boolean CC_Off = false;
	@set
	@get
	private boolean CC_On = false;
	@set
	@get
	private boolean targetSpeedUp = false;
	@set
	@get
	private boolean targetSpeedDown = false;
	@set
	private real v_ist = 0.0;
	@get
	private real v_soll = 0.0;
	@get
	private boolean CC_active=false;

	@generated("statemachine")
	public void cCF_StatemachineStatemachineTrigger() triggers CCF_StatemachineStatemachine;

	@generatedStateMachine
	statemachine CCF_StatemachineStatemachine using CCF_StatemachineStatemachineStates {
		start off;

		state passive {
			entry{
				CC_active=false;
			}
			transition brakeDriver > 0.0 to off;
			transition v_ist < v_soll to active;
			transition CC_Off == true to off;
			transition CC_On == true to active;
		}

		state active {
			entry{
				CC_On=false;
				CC_active=true;
			}
			static {
				if (targetSpeedUp) {
					v_soll += 1.0;
					targetSpeedUp=false;
				}
				if (targetSpeedDown) {
					v_soll -= 1.0;
					targetSpeedDown=false;
				}
			}
			transition brakeDriver > 0.0 to off;
			transition powerDriver > 0.0 to passive;
			transition CC_Off == true to off;
		}

		state off {
			entry {
				CC_Off = false;
				CC_active=false;
			}
			transition targetSpeedUp == true to active;
			transition targetSpeedDown == true to active;
			transition CC_On == true to active;
		}
	}
}