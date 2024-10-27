import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/feature/auth/register/presentation/views/widgets/register_form.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_images.dart';
import '../../../login/widgets/login_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterBody(),
    );
  }
}
class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height*0.12,),


        Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80)
              )
          ),
          child: RegisterForm(),
        )
      ],
    );
  }
}

