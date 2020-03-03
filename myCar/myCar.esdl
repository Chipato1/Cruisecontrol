package myCar;
import resources.CarMessages;

static class myCar
writes CarMessages.v
reads CarMessages.power, CarMessages.brake {
	myDrive_2 myVehicle;

	@generated("blockdiagram")
	@thread
	public void calc() {
		CarMessages.v = myVehicle.vCar(CarMessages.power, CarMessages.brake); // Main/calc 1
	}
}