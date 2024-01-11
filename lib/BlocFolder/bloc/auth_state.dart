part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class AuthFailture extends AuthState {
  final String message;

  AuthFailture(this.message);
}

class AuthSuceess extends AuthState {
  final String message;

  AuthSuceess(this.message);
}
