import 'package:flutter/material.dart';

class UiHelper {
  static CustomButton({
    required VoidCallback callback,
    required String buttonname,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),

        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Color(0XFF5E5E5E),
        fontWeight: fontweight ?? FontWeight.normal,
      ),
    );
  }

  static Widget CustomContainer({
    required TextEditingController controller,
    required FocusNode focusNode,
    FocusNode? nextFocus,
  }) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1.5),
      ),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
        onChanged: (value) {
          if (value.length == 1) {
            if (nextFocus != null) {
              FocusScope.of(focusNode.context!).requestFocus(nextFocus);
            } else {
              focusNode.unfocus(); // last box
            }
          }
        },
      ),
    );
  }
}
