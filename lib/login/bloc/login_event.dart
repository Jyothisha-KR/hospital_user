part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class UserLoginEvent extends LoginEvent {
  String email;
  String password;

  UserLoginEvent({
    required this.email,
    required this.password,
  });
}
