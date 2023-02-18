import 'package:flutter_omni_test/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) Log.to.d(change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Log.to.v(
      '🚦 Event: ${transition.event} Current State: ${transition.currentState.runtimeType}, next State: ${transition.nextState.runtimeType}',
    );
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    Log.to.v('🐣 ${bloc.runtimeType}');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    Log.to.v('💀 ${bloc.runtimeType}');
  }
}
