part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}
class SignupSuccess extends SignupState{}
class SignupFailed extends SignupState{
  SignupFailed({required this.errorMsg});
  String errorMsg;
}
