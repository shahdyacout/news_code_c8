  import 'package:flutter/material.dart';
import 'package:news/feature/splash_screen/splash_screen.dart';

void main (){
 runApp(NewsApp());
  }
  class NewsApp extends StatelessWidget{
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SplashScreen(),
    );
  }

  }