import 'package:flutter/material.dart';
import 'package:news/core/app_colors.dart';
import 'package:news/core/app_images.dart';
import 'package:news/feature/auth/login/widgets/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),
            (){
      navigateToLogin();
    }
    );
  }
  navigateToLogin(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LoginScreen();
    })
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: Image.asset(AppImages.newsLogo,color: AppColors.white,
        width: 180,height: 120,),
      ),
    );
  }
}
