import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? txtColor;

  const LinkButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.txtColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: txtColor ?? Colors.white,
          fontSize: 12,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
