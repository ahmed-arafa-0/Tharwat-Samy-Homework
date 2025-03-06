import 'smart_device.dart';

class AirConditioner extends SmartDevice {
  int _tempeture = 22;
  AirConditionerMode airConditionerMode;

  AirConditioner({
    required super.deviceName,
    this.airConditionerMode = AirConditionerMode.Cold,
  });

  set tempeture(int tempeture) {
    if (tempeture > 18 && tempeture < 30) {
      this._tempeture = tempeture;
    } else {
      print("tempeture must be between 18°C and 30°C only\n");
    }
  }

  int get tempeture => this._tempeture;

  @override
  void deviceDetails() {
    print("Air Conditioner : $deviceName");
    print("Air Conditioner Status: ${super.isSwitchOn ? "ON" : "OFF"}\n");
    if (super.isSwitchOn) {
      print("Air Conditioner tempruture: $_tempeture°C");
      print("Air Conditioner Mode: $airConditionerMode\n");
    }
  }
}

enum AirConditionerMode {
  Hot,
  Cold,
}
