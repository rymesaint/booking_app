import 'package:booking_app/config/config.dart';
import 'package:booking_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:booking_app/shared_component/input_text.dart';
import 'package:booking_app/shared_component/primary_button.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<LoginCubit>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimension.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: AppFont.h3,
          ),
          16.0.height,
          const InputText(label: 'E-mail'),
          16.0.height,
          const InputText(label: 'Password'),
          16.0.height,
          PrimaryButton(
            onPressed: () => cubit.login(context),
            label: 'Login',
            width: double.infinity,
            type: PrimaryButtonType.type3,
          )
        ],
      ),
    );
  }
}
