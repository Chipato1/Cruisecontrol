package myWork;
import resources.CarMessages;
import resources.CCF_Messages;

static class CCF_Control
reads CarMessages.v
writes CCF_Messages.gaspedal_cc, CCF_Messages.brakepedal_cc {
	const real c = 0.0;
	real tmp;
	real v;
	real v_2;
	
	@thread
	@generated("blockdiagram")
	public void calc() {
		
		tmp = (tmp + (v_2 - CarMessages.v)); // Main/calc 1
		CCF_Messages.brakepedal_cc = (switch((switch((((v_2 - CarMessages.v) * 0.01) + ((tmp + (v_2 - CarMessages.v)) * 0.01)) < 0.0)
						case 1 :(((v_2 - CarMessages.v) * 0.01) + ((tmp + (v_2 - CarMessages.v)) * 0.01))
						default : 0.0) < -100.0)
				case 1 :(switch((((v_2 - CarMessages.v) * 0.01) + ((tmp + (v_2 - CarMessages.v)) * 0.01)) < 0.0)
						case 1 :(((v_2 - CarMessages.v) * 0.01) + ((tmp + (v_2 - CarMessages.v)) * 0.01))
						default : 0.0)
				default : -100.0); // Main/calc 2
		CCF_Messages.gaspedal_cc = (switch((switch((((v_2 - CarMessages.v) * 0.01) + ((tmp + (v_2 - CarMessages.v)) * 0.01)) > 0.0)
						case 1 :(((v_2 - CarMessages.v) * 0.01) + ((tmp + (v_2 - CarMessages.v)) * 0.01))
						default : 0.0) > 1.0)
				case 1 :(switch((((v_2 - CarMessages.v) * 0.01) + ((tmp + (v_2 - CarMessages.v)) * 0.01)) > 0.0)
						case 1 :(((v_2 - CarMessages.v) * 0.01) + ((tmp + (v_2 - CarMessages.v)) * 0.01))
						default : 0.0)
				default : 100.0); // Main/calc 3
	}
}