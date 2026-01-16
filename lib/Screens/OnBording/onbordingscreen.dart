import 'package:flutter/material.dart';

import '../../Widgets/uihelper.dart';
import '../Login/loginscreen.dart';

class Onbordingscreen extends StatelessWidget {
  const Onbordingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/bording.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 20,
              fontweight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read Out ", height: 14),
                UiHelper.CustomText(
                  text: "Privacy Policy",
                  height: 14,
                  color: Colors.blue,
                ),
                UiHelper.CustomText(
                  text: " Tap agree and continue",
                  height: 14,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept the ", height: 14),
                UiHelper.CustomText(
                  text: "Teams of Service",
                  height: 14,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginscreen()),
          );
        },
        buttonname: "Agree and Continue",

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
