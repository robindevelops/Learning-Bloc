part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginRequsted extends AuthEvent {
  final String email;
  final String password;

  LoginRequsted({required this.email, required this.password});
}
