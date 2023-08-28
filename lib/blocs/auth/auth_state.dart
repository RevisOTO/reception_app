part of 'auth_bloc.dart';


@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthValidatedUser extends AuthState {
  final User user;
  AuthValidatedUser(this.user);
}

class AuthInValidatedUser extends AuthState {}

class AuthLoading extends AuthState {
  AuthLoading();
}

class AuthLoaded extends AuthState {
  final String username;
  AuthLoaded(
    this.username,
  );
}

class AuthError extends AuthState {}