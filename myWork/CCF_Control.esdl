package myWork;
import resources.CarMessages;
import resources.CCF_Messages;

class CCF_Control
reads CarMessages.v
writes CCF_Messages.gaspedal_cc, CCF_Messages.brakepedal_cc {
	real v_soll;
	const real c = 0.0;
	real tmp;

	@generated("blockdiagram")
	public void calc() {
		tmp = (tmp + (100.0 - CarMessages.v)); // Main/calc 1
		CCF_Messages.brakepedal_cc = (switch((switch((((100.0 - CarMessages.v) * 0.01) + ((tmp + (100.0 - CarMessages.v)) * 0.01)) < 0.0)
						case 1 :(((100.0 - CarMessages.v) * 0.01) + ((tmp + (100.0 - CarMessages.v)) * 0.01))
						default : 0.0) < -100.0)
				case 1 :(switch((((100.0 - CarMessages.v) * 0.01) + ((tmp + (100.0 - CarMessages.v)) * 0.01)) < 0.0)
						case 1 :(((100.0 - CarMessages.v) * 0.01) + ((tmp + (100.0 - CarMessages.v)) * 0.01))
						default : 0.0)
				default : -100.0); // Main/calc 2
		CCF_Messages.gaspedal_cc = (switch((switch((((100.0 - CarMessages.v) * 0.01) + ((tmp + (100.0 - CarMessages.v)) * 0.01)) > 0.0)
						case 1 :(((100.0 - CarMessages.v) * 0.01) + ((tmp + (100.0 - CarMessages.v)) * 0.01))
						default : 0.0) > 1.0)
				case 1 :(switch((((100.0 - CarMessages.v) * 0.01) + ((tmp + (100.0 - CarMessages.v)) * 0.01)) > 0.0)
						case 1 :(((100.0 - CarMessages.v) * 0.01) + ((tmp + (100.0 - CarMessages.v)) * 0.01))
						default : 0.0)
				default : 100.0); // Main/calc 3
	}
}