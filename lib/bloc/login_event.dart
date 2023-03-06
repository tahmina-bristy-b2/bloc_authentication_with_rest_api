part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginCheckEvent extends LoginEvent {
  String username;
  String password;
  LoginCheckEvent({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];
}
