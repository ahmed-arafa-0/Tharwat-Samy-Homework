class SwitchState {}

class InitialState extends SwitchState {}

class UpdatedState extends SwitchState {
  final bool isOn;

  UpdatedState({required this.isOn});
}

class ErrorState extends SwitchState {}
