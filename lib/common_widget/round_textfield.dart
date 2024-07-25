import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final double radius;
  final bool obscureText;
  final Widget? right;
  final bool isPadding;
  const RoundTextField(
      {super.key,
      required this.hintText,
      this.controller,
      this.keyboardType,
      this.radius = 25,
      this.obscureText = false,
      this.right,
      this.isPadding = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: isPadding ? 20 : 0),
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border.all(color: TColor.placeholder.withOpacity(0.5), width: 0.5),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        textAlign: TextAlign.center,
        obscureText: obscureText,
        style: TextStyle(color: TColor.primaryText, fontSize: 17),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          suffixIcon: right,
          hintStyle: TextStyle(color: TColor.placeholder, fontSize: 17),
        ),
      ),
    );
  }
}

class NewRoundTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final double radius;   
  final bool obscureText;
  final Widget? right;
  final bool isPadding;
  const NewRoundTextField(
      {super.key,
      required this.hintText,
      this.controller,
      this.keyboardType,
      this.radius = 25,
      this.obscureText = false,
      this.right,
      this.isPadding = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: isPadding ? 20 : 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)]),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        textAlign: TextAlign.center,
        obscureText: obscureText,
        style: TextStyle(color: TColor.primaryText, fontSize: 17),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          suffixIcon: right,
          hintStyle: TextStyle(color: TColor.placeholder, fontSize: 17),
        ),
      ),
    );
  }
}
