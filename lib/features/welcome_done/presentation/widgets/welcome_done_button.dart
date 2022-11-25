import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/welcome_done/presentation/cubit/welcome_done_cubit.dart';
import 'package:booking_app/shared_component/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeDoneButton extends StatelessWidget {
  const WelcomeDoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<WelcomeDoneCubit>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimension.w32),
      child: PrimaryButton(
        onPressed: () => cubit.discover(context),
        label: 'Let\'s Go',
        type: PrimaryButtonType.type3,
        width: double.infinity,
      ),
    );
  }
}
