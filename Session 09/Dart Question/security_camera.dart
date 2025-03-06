import 'smart_device.dart';

class SecurityCamera extends SmartDevice {
  SecurityCamera({required super.deviceName});

  void detectMotion() {
    print('$deviceName detected motion!\n');
  }

  @override
  void deviceDetails() {
    print("Security Camera : $deviceName");
    print("Security Camera Status: ${super.isSwitchOn ? "ON" : "OFF"}\n");
  }
}
