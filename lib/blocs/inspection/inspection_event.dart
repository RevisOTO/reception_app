part of 'inspection_bloc.dart';


@immutable
abstract class InspectionEvent {}

class Login extends InspectionEvent {
  final String userName;
  final String password;

  Login(this.userName, this.password);
}

class InspectionUser extends InspectionEvent{}