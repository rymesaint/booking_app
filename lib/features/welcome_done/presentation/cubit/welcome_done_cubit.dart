import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'welcome_done_state.dart';

class WelcomeDoneCubit extends Cubit<WelcomeDoneState> {
  WelcomeDoneCubit() : super(WelcomeDoneInitial());
}
