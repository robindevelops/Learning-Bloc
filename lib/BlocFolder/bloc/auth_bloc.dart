// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginRequsted>(
      (event, emit) {
        final email = event.email;
        final password = event.password;
        if (!email.contains('@')) {
          emit(AuthFailture("Enter Valid email"));
        } else if (password.length < 6) {
          emit(AuthFailture("Password is less Than 6"));
        } else {
          emit(AuthSuceess("Hurray Login Success"));
        }
      },
    );
  }
}
