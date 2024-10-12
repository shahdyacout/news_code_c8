
import 'package:flutter/material.dart';
import 'package:news/core/widgets/custom_field.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        CustomField(
            title: "User Name",
            controller: userNameController,
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.06,),
        CustomField(
            title: "Password",
            controller: passwordController,
          suffixIcon: Icon(Icons.visibility),
        ),
        SizedBox(height: 9,),
        Row(
          children: [

          ],
        )
      ],
    );
  }
}
