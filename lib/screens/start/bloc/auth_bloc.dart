import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(ShowSplashScreenState()) {
    on<AuthStartedEvent>(_authStartedEventToState);
  }

  _authStartedEventToState(
      AuthStartedEvent event, Emitter<AuthState> emit) async {
    emit(ShowSplashScreenState());

    await Future.delayed(const Duration(seconds: 3));

    emit(GoToDashboard());
  }
}
