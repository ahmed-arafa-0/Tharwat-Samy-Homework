import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('Bloc $bloc has been changed to $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Bloc $bloc has been closed');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Bloc $bloc has been created');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint(
      'Bloc $bloc has been triggerd by an error : $error with stackTrace $stackTrace',
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('Bloc $bloc has been triggerd by an event : $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('Bloc $bloc has been transition to $transition');
  }
}
