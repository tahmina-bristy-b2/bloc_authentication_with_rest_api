part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginDoneState extends LoginState {
  Map<String, dynamic>? loginUserInfo;
  LoginDoneState({required this.loginUserInfo});
  @override
  List<Object> get props => [loginUserInfo!];
}
