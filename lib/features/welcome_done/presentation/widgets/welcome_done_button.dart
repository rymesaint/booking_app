import 'package:booking_app/config/config.dart';
import 'package:booking_app/shared_component/primary_button.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomeDoneButton extends StatelessWidget {
  const WelcomeDoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimension.w32),
      child: PrimaryButton(
        onPressed: () => print('ok'),
        label: 'Let\'s Go',
        type: PrimaryButtonType.type3,
        width: double.infinity,
      ),
    );
  }
}
