import 'package:flutter/cupertino.dart';
import 'package:resume_app/screen/home_screen.dart';
import 'package:resume_app/screen/splash_screen.dart';
import 'package:resume_app/screen/edu_screen.dart';

Map<String,WidgetBuilder> screen_routes={
  '/': (Context)=> SplaseScreen(),
  'home': (Context)=> HomeScreen(),
  'edu': (context) => EduScreen()
} ;