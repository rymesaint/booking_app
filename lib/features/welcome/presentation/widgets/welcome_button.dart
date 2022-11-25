import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/welcome/presentation/cubit/welcome_cubit.dart';
import 'package:booking_app/shared_component/primary_button.dart';
import 'package:booking_app/shared_component/secondary_button.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<WelcomeCubit>(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimension.w16),
        child: Row(
          children: [
            Expanded(
              child: PrimaryButton(
                onPressed: () {},
                label: 'Explore',
                type: PrimaryButtonType.type3,
              ),
            ),
            16.0.width,
            Expanded(
              child: SecondaryButton(
                onPressed: () => cubit.loginPage(context),
                label: 'Log in',
                backroundColor: Colors.white,
                type: SecondaryButtonType.type3,
              ),
            ),
          ],
        ));
  }
}
