abstract class SmartDevice {
  final String deviceName;
  bool _isSwitchOn = false;

  SmartDevice({required this.deviceName});

  void turnOn() {
    _isSwitchOn = true;
    print('$deviceName has been turned ON\n');
  }

  void turnOff() {
    _isSwitchOn = false;
    print('$deviceName has been turned OFF\n');
  }

  void switchOnOff() {
    _isSwitchOn = !_isSwitchOn;
    print('$deviceName has been turned ${_isSwitchOn ? 'ON' : 'OFF'}\n');
  }

  bool get isSwitchOn => this._isSwitchOn;

  void deviceDetails();
}
