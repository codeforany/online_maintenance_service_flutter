import 'package:flutter/material.dart';
import 'package:maintenance_service_app/screen/login/sign_in_screen.dart';
// import 'package:maintenance_service_app/common/extension.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadView();
  }

  void loadView() async {
    await Future.delayed(const Duration(seconds: 3));
    goStart();
  }

  void goStart() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
        (route) => true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/img/splash.png",
        // width: context.width,
        // height: context.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
