import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';

class LoginOTPScreen extends StatefulWidget {
  const LoginOTPScreen({super.key});

  @override
  State<LoginOTPScreen> createState() => _LoginOTPScreenState();
}

class _LoginOTPScreenState extends State<LoginOTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
            )
          ]),
      width: context.width * 0.7,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/login_otp_icon.png",
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Enter 4 Digits code",
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OtpTextField(
            numberOfFields: 4,
            borderColor: TColor.secondaryText,
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            fieldWidth: 50,
            fieldHeight: 50,
            filled: true,
            fillColor: Colors.white,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {}, // end onSubmit
          ),
          const SizedBox(
            height: 25,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Resend >",
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
