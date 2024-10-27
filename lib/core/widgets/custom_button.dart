import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/core/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.onPressed,required this.ButtonTitle});
 final void Function()? onPressed;
 final String ButtonTitle;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.mainColor,
      onPressed:onPressed,
      child: Text(ButtonTitle,
      style: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold
      ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),

      ),
    );
  }
}
