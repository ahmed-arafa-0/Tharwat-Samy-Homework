import 'smart_device.dart';

class SmartLight extends SmartDevice {
  int _lightIntensity = 50;
  SmartLight({
    required super.deviceName,
  });

  set lightIntensity(int lightIntensity) {
    if (lightIntensity > 0 && lightIntensity < 100) {
      this._lightIntensity = lightIntensity;
    } else {
      print("Light must be between 0% and 100% only\n");
    }
  }

  int get lightIntensity => this._lightIntensity;

  @override
  void deviceDetails() {
    print("Smart Light : $deviceName");
    print("Light Status : ${super.isSwitchOn ? "ON" : "OFF"}\n");
    if (super.isSwitchOn) {
      print("Light Intensity: $_lightIntensity%\n");
    }
  }
}
