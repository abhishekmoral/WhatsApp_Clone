import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Profile/profilescreen.dart';
import 'package:whatsapp/Widgets/uihelper.dart';

class Otpscreen extends StatelessWidget {
  String phonenumber;

  Otpscreen({required this.phonenumber});

  final otp1Controller = TextEditingController();
  final otp2Controller = TextEditingController();
  final otp3Controller = TextEditingController();
  final otp4Controller = TextEditingController();
  final otp5Controller = TextEditingController();
  final otp6Controller = TextEditingController();

  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();
  final focus5 = FocusNode();
  final focus6 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 80),
              UiHelper.CustomText(
                text: "Verifying your number",
                height: 20,
                color: Color(0xFF00A884),
                fontweight: FontWeight.bold,
              ),
              SizedBox(height: 30),
              UiHelper.CustomText(
                text: "you  have try register +91${phonenumber}",
                height: 15,
              ),
              UiHelper.CustomText(
                text: "recently. Wait befor requesting an sms or call",
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomText(text: "with your code ", height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: UiHelper.CustomText(
                      text: " Wrong number",
                      height: 15,
                      color: Color(0xFF00A884),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomContainer(
                      controller: otp1Controller,
                      focusNode: focus1,
                      nextFocus: focus2,
                    ),
                    UiHelper.CustomContainer(
                      controller: otp2Controller,
                      focusNode: focus2,
                      nextFocus: focus3,
                    ),
                    UiHelper.CustomContainer(
                      controller: otp3Controller,
                      focusNode: focus3,
                      nextFocus: focus4,
                    ),
                    UiHelper.CustomContainer(
                      controller: otp4Controller,
                      focusNode: focus4,
                      nextFocus: focus5,
                    ),
                    UiHelper.CustomContainer(
                      controller: otp5Controller,
                      focusNode: focus5,
                      nextFocus: focus6,
                    ),
                    UiHelper.CustomContainer(
                      controller: otp6Controller,
                      focusNode: focus6,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              UiHelper.CustomText(
                text: "Did not receive code ",
                height: 14,
                color: Color(0xFF00A884),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profilescreen()));
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
