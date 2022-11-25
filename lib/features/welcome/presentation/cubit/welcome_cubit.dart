import 'package:bloc/bloc.dart';
import 'package:booking_app/features/login/presentation/pages/login_page.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(WelcomeInitial());

  void loginPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const LoginPage(),
    ));
  }
}
