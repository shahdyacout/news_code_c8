import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_field.dart';
import '../register_screen.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController emailController= TextEditingController();
  final TextEditingController passwordController=TextEditingController();
 void dispose(){
    super.dispose();
  emailController.dispose();
  passwordController.dispose();

 }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomField(

          title: "Email",
          controller: emailController,
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
            Text("Forget the Password?",
              textAlign: TextAlign.right,),

            CustomButton(
                onPressed: ()async{
                  try {
                    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("The password provided is too weak")));

                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }


            },
                ButtonTitle: "Sign Up")
          ],
        ),

      ],
    );
  }
}
