import 'package:flutter/material.dart';

class SplaseScreen extends StatefulWidget {
  const SplaseScreen({super.key});

  @override
  State<SplaseScreen> createState() => _SplaseScreenState();
}

class _SplaseScreenState extends State<SplaseScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, 'home');
    },);
    return SafeArea(child: Scaffold(
    body: Center(
    child: Image.asset("asset/image/resumelogo.png",width: 100,height: 100,),
    )
    )
    );
  }
}
