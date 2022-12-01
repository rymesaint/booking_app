import 'package:bloc/bloc.dart';
import 'package:booking_app/features/discover/presentation/pages/discover_page.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'welcome_done_state.dart';

class WelcomeDoneCubit extends Cubit<WelcomeDoneState> {
  WelcomeDoneCubit() : super(WelcomeDoneInitial());

  void discover(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => DiscoverPage(),
    ));
  }
}
