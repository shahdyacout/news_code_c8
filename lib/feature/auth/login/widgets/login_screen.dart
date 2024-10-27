


import 'package:flutter/material.dart';
import 'package:news/core/app_colors.dart';
import 'package:news/core/app_images.dart';
import 'package:news/feature/auth/login/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height*0.12,),
          Image.asset(AppImages.newsLogo),
          SizedBox(height: MediaQuery.sizeOf(context).height*0.09),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80)
              )
            ),
            child: LoginForm(),
          )
        ],
      ),
    );
  }
}
