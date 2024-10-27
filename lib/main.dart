  import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:news/feature/auth/login/widgets/login_screen.dart';
import 'package:news/feature/splash_screen/splash_screen.dart';

import 'firebase_options.dart';

void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 runApp(NewsApp());
  }
  class NewsApp extends StatelessWidget{
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LoginScreen(),
    );
  }

  }