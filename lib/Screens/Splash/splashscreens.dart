import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

import '../OnBording/onbordingscreen.dart';

class Splashscreens extends StatefulWidget {
  const Splashscreens({super.key});

  @override
  State<Splashscreens> createState() => _SplashscreensState();
}

class _SplashscreensState extends State<Splashscreens> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onbordingscreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/whatsappicon.png",
              height: 144,
              width: 144,
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(text: "WhatsApp", height: 40, fontweight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
