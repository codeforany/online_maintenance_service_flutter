import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/popup_layout.dart';
import 'package:maintenance_service_app/common_widget/round_button.dart';
import 'package:maintenance_service_app/common_widget/round_textfield.dart';
import 'package:maintenance_service_app/screen/login/login_otp_screen.dart';
import 'package:maintenance_service_app/screen/login/sign_up_screen.dart';

class SignInMobileScreen extends StatefulWidget {
  const SignInMobileScreen({super.key});

  @override
  State<SignInMobileScreen> createState() => _SignInMobileScreenState();
}

class _SignInMobileScreenState extends State<SignInMobileScreen> {
  FlCountryCodePicker countryCodePicker = const FlCountryCodePicker();
  TextEditingController txtMobile = TextEditingController();
  late CountryCode countryCode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    countryCode = countryCodePicker.countryCodes
        .firstWhere((element) => element.name == "India");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Transform.scale(
            scale: 1.1,
            child: Image.asset(
              "assets/img/bg.png",
              width: context.width,
              height: context.height,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            width: context.width,
            height: context.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Image.asset(
                    "assets/img/logo.png",
                    width: context.width * 0.65,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 25),
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45,
                      vertical: 25,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 3,
                              offset: Offset(0, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                color: TColor.title,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () async {
                            final code = await countryCodePicker.showPicker(
                                context: context);

                            if (code != null) {
                              countryCode = code;
                              setState(() {});
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            width: double.maxFinite,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12, blurRadius: 2)
                                ]),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: countryCode.flagImage(
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Expanded(
                                  child: Text(
                                    "${countryCode.name.toUpperCase()} ( ${countryCode.dialCode} )",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: TColor.placeholder,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        NewRoundTextField(
                          hintText: "Enter Mobile Number",
                          keyboardType: TextInputType.phone,
                          controller: txtMobile,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: RoundButton(
                              title: "NEXT",
                              fontWeight: FontWeight.bold,
                              onPressed: () {
                                Navigator.push(context,
                                    PopupLayout(child: const LoginOTPScreen()));
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: Text(
                                "LOGIN WITH EMAIL",
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Or Sign In with",
                            style: TextStyle(
                              color: TColor.placeholder,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/img/fb.png",
                                width: 70,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/img/google.png",
                                width: 70,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/img/in.png",
                                width: 70,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  RoundButton(
                      title: "SIGNUP",
                      width: context.width * 0.65,
                      type: RoundButtonType.line,
                      onPressed: () {
                        context.push(const SignUpScreen());
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
