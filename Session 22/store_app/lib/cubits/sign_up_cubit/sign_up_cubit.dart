import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/cubits/sign_up_cubit/sign_up_cubit_states.dart';

// import '../../model/sign_up_model.dart';

class SignUpCubit extends Cubit<SignUpCubitStates> {
  SignUpCubit() : super(InitialState());

  signUp() async {
    try {
      emit(SignUpLoadingState());
      await Future.delayed(Duration(seconds: 2));
      emit(SignUpSuccessState());
    } catch (e) {
      emit(SignUpFailureState());
    }

    // if (signUpfields.checkAllFieldsNotNull()) {
    //   emit(SignUpLoadingState());
    //   Future.delayed(Duration(seconds: 2));
    //   emit(SignUpSuccessState());
    // } else {
    //   emit(SignUpFailureState());
    // }
  }
}
