import 'smart_device.dart';

class SmartHomeController {
  List<SmartDevice> _devices = [];

  bool addDevice({required SmartDevice device}) {
    _devices.add(device);
    print('${device.deviceName} added to Smart Home\n');
    return true;
  }

  bool turnAllOn() {
    for (var device in _devices) {
      device.turnOn();
    }
    print('All Devices has been turned on\n');
    return true;
  }

  bool turnAllOff() {
    for (var device in _devices) {
      device.turnOff();
    }
    print('All Devices has been turned off\n');
    return true;
  }

  void printDetails() {
    for (var device in _devices) {
      device.deviceDetails();
    }
    print("\n");
  }
}
