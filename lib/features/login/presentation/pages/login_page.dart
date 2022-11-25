import 'package:booking_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:booking_app/features/login/presentation/widgets/login_footer.dart';
import 'package:booking_app/features/login/presentation/widgets/login_form.dart';
import 'package:booking_app/features/login/presentation/widgets/login_image.dart';
import 'package:booking_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: Builder(
        builder: (context) => _buildPage(context),
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            60.0.height,
            const LoginImage(),
            48.0.height,
            const LoginForm(),
            16.0.height,
            const LoginFooter(),
          ],
        ),
      ),
    );
  }
}
