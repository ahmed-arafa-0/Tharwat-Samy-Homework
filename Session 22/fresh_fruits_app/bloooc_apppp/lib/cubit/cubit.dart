import 'package:bloooc_apppp/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TriggerSwitchCubit extends Cubit<SwitchState> {
  TriggerSwitchCubit() : super(InitialState());

  triggerSwitch({required bool isOn}) {
    emit(UpdatedState(isOn: isOn));
  }

  errorSwitch() {
    emit(ErrorState());
  }
}
