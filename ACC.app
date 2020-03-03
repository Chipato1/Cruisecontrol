application {
	class myCar.myCar
	class myWork.myDriver
	class myWork.myACC
	class myWork.CCF_Statemachine_BD
}
schedule {
	startup {
	}
	shutdown {
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process myWork.myDriver.drive
		process myWork.myACC.control
		process myWork.CCF_Statemachine_BD.calc
		process myCar.myCar.calc
	}
}