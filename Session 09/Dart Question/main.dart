/*
Exercise 2: Smart Home Automation
A smart home system controls different devices such as lights, air conditioners, and security
cameras.
Each device has an on and off functionality.
Some devices have additional functionalities, e.g., adjusting temperature or motion detection.
The system should allow multiple devices to be controlled together.
Question:
How would you design a system where different devices share common functionalities but also have
unique behaviors?
*/

/*
Answer:
We can design the smart home automation system using abstract classes and 
interfaces to ensure devices share common methods while also allowing unique behaviors.

Design :
Abstract Class: (SmartDevice) Defines the common methods (Turn on and Off)
Device Classes: Extend (SmartDevice) and implement additional methods. then define
in each device class its additional methods like (set temperature) and (set Light Intensity)
Managment Class: (SmartHomeController) manages multiple devices together.
*/

import 'air_conditioner.dart';
import 'security_camera.dart';
import 'smart_home_controller.dart';
import 'smart_light.dart';

void main() {
  SmartHomeController homeController = SmartHomeController();

  SmartLight livingRoomSmartLight = SmartLight(
    deviceName: "Living Room",
  );

  AirConditioner bedroom01AirConditioner = AirConditioner(
    deviceName: "Bedroom 01",
  );

  SecurityCamera backDoorSecurityCamera = SecurityCamera(
    deviceName: "Back Door",
  );

  homeController.addDevice(
    device: livingRoomSmartLight,
  );
  homeController.addDevice(
    device: SmartLight(deviceName: "Bedroom 01"),
  );
  homeController.addDevice(
    device: SmartLight(deviceName: "Bedroom 02"),
  );
  homeController.addDevice(
    device: SmartLight(deviceName: "Front Door"),
  );

  homeController.addDevice(
    device: AirConditioner(deviceName: "Living Room"),
  );
  homeController.addDevice(
    device: bedroom01AirConditioner,
  );
  homeController.addDevice(
    device: AirConditioner(deviceName: "Bedroom 02"),
  );

  homeController.addDevice(
    device: SecurityCamera(deviceName: "Front Door"),
  );
  homeController.addDevice(
    device: backDoorSecurityCamera,
  );

  homeController.turnAllOn();

  homeController.printDetails();

  livingRoomSmartLight.lightIntensity = 120;
  livingRoomSmartLight.lightIntensity = 80;

  bedroom01AirConditioner.tempeture = 10;
  bedroom01AirConditioner.tempeture = 22;
  bedroom01AirConditioner.airConditionerMode = AirConditionerMode.Hot;

  backDoorSecurityCamera.switchOnOff();

  homeController.printDetails();

  homeController.turnAllOff();

  homeController.printDetails();
}
