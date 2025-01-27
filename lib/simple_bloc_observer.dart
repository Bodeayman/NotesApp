import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("Change : $change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("Bloc $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("Bloc $bloc");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint("Bloc $bloc and the error is $error");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint("Bloc $bloc and the event is $event");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint("Bloc $bloc and the transition is $transition");
  }
}
