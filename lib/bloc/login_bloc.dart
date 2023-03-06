import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fetchdatafromapi/services/repository/repository.dart';
import 'package:http/http.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginCheckEvent>((event, emit) async {
      emit(LoginLoadingState());
      Response response = await RepositoryClass()
          .getLoginSuccessRepo(event.username, event.password);
      int status = response.statusCode;
      if (status == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        print("ami bloc e =$data ");
        emit(LoginDoneState(loginUserInfo: data));
      }
    });
  }
}
