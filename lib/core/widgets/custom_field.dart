
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/app_colors.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key,required this.title,this.suffixIcon,required this.controller});
  final String title;
  final Widget ? suffixIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
RichText(
    text: TextSpan(
      text: title,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
color: AppColors.grey
        )
      ),
      children: [
        TextSpan(
          text: "*",
          style: TextStyle(color: AppColors.red)
        )
      ]

    ),

),
        TextFormField(
          
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: AppColors.enabledBorderColor)
            ),
             focusedBorder:OutlineInputBorder(
               borderSide: BorderSide(color: AppColors.mainColor),
               borderRadius: BorderRadius.circular(6)
             )
          ),
        )
      ],
    );
  }
}
