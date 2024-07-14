import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';
import 'package:maintenance_service_app/common/extension.dart';
import 'package:maintenance_service_app/common_widget/round_button.dart';
import 'package:maintenance_service_app/common_widget/round_textfield.dart';
import 'package:maintenance_service_app/screen/login/sign_in_mobile_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtZipCode = TextEditingController();

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
                        vertical: 25, horizontal: 20),
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
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
                        Text(
                          "SignUp",
                          style: TextStyle(
                            color: TColor.title,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        NewRoundTextField(
                          hintText: "First Name",
                          controller: txtFirstName,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        NewRoundTextField(
                          hintText: "Last Name",
                          controller: txtLastName,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        NewRoundTextField(
                          hintText: "Email",
                          keyboardType: TextInputType.emailAddress,
                          controller: txtEmail,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        NewRoundTextField(
                          hintText: "Password",
                          obscureText: true,
                          right: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/img/show_pass.png",
                              width: 30,
                            ),
                          ),
                          controller: txtPassword,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        NewRoundTextField(
                          hintText: "Mobile Number",
                          keyboardType: TextInputType.phone,
                          controller: txtMobile,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        NewRoundTextField(
                          hintText: "Zip Code",
                          keyboardType: TextInputType.number,
                          controller: txtZipCode,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: RoundButton(
                              title: "SIGN UP",
                              fontWeight: FontWeight.bold,
                              onPressed: () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Or Sign Up with",
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
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundButton(
                      title: "SIGN IN",
                      width: context.width * 0.65,
                      type: RoundButtonType.line,
                      onPressed: () {
                        context.pop();
                      }),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
