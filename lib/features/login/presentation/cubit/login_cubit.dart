import 'package:bloc/bloc.dart';
import 'package:booking_app/features/welcome_done/presentation/pages/welcome_done_page.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void login(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const WelcomeDonePage(),
    ));
  }
}
