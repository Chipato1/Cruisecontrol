package myWork;
import resources.CarMessages;
import resources.CCF_Messages;
import resources.SMMessages;
import resources.DriverMessages;
import resources.TimeTick;

static class CCF_Control
reads CarMessages.v, SMMessages.vTarget, DriverMessages.powerDriver, DriverMessages.CC_On
writes CCF_Messages.gaspedal_cc, CCF_Messages.brakepedal_cc {
	const real c = 0.0;
	real tmp;

	real gaspedal_tmp;
	real brakepedal_tmp;
	characteristic real c_2 = 0.0;

	@generated("blockdiagram")
	public void calc() {
		tmp = (tmp + (SMMessages.vTarget - CarMessages.v)); // Main/calc 1
		if (DriverMessages.CC_On) {
			gaspedal_tmp = (switch((switch((((SMMessages.vTarget - CarMessages.v) * 0.01) + ((tmp + (SMMessages.vTarget - CarMessages.v)) * 0.01)) > 0.0)
							case 1 :(((SMMessages.vTarget - CarMessages.v) * 0.01) + ((tmp + (SMMessages.vTarget - CarMessages.v)) * 0.01))
							default : 0.0) > 100.0)
					case 1 :(switch((((SMMessages.vTarget - CarMessages.v) * 0.01) + ((tmp + (SMMessages.vTarget - CarMessages.v)) * 0.01)) > 0.0)
							case 1 :(((SMMessages.vTarget - CarMessages.v) * 0.01) + ((tmp + (SMMessages.vTarget - CarMessages.v)) * 0.01))
							default : 0.0)
					default : 100.0); // Main/calc 2/if-then 1
		} else {
			gaspedal_tmp = DriverMessages.powerDriver; // Main/calc 2/if-else 1
		} // Main/calc 2
		CCF_Messages.gaspedal_cc = gaspedal_tmp; // Main/calc 3
		if (DriverMessages.CC_On) {
		} else {
		} // Main/calc 4
	}
}
