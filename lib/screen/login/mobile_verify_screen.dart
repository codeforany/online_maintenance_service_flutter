import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';

class MobileVerifyScreen extends StatefulWidget {
  const MobileVerifyScreen({super.key});

  @override
  State<MobileVerifyScreen> createState() => _MobileVerfiyScreenState();
}

class _MobileVerfiyScreenState extends State<MobileVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/otp_bg.png",
            width: context.width,
            height: context.height,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            width: context.width,
            height: context.height,
            child: SingleChildScrollView(
              child: SizedBox(
                width: context.width,
                height: context.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Image.asset(
                      "assets/img/logo.png",
                      width: context.width * 0.7,
                    ),
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        text: "Please verify\nyour",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                            text: " Cell Number",
                            style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 35,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 35),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(0, 2))
                          ]),
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                            text:
                                "Please enter the 4 digit verification\nCode sent to your cell number\n",
                            children: [
                              TextSpan(
                                  text: "310 555 5555",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  )),
                              TextSpan(
                                  text: " via SMS message \n or ",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 17,
                                  )),
                              TextSpan(
                                  text: "CHANGE",
                                  style: TextStyle(
                                      color: TColor.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline)),
                              TextSpan(
                                  text: " your number.",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 17,
                                  )),
                            ],
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 17,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OtpTextField(
                      numberOfFields: 4,
                      borderColor: Colors.white,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      fieldWidth: 60,
                      fieldHeight: 60,
                      filled: true,
                      borderRadius: BorderRadius.circular(10),
                      fillColor: Colors.white,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {}, // end onSubmit
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resend OTP",
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                    const Spacer(),
                    InkWell(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: TColor.secondary,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/img/next.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
