application {
	class myCar.myCar
	class myWork.myACC
	class myWork.DriverTest
	class myWork.DriverGUI
}
schedule {
	startup {
	}
	shutdown {
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process myWork.DriverTest.drive
		process myWork.myACC.control
		process myCar.myCar.calc
	}
}