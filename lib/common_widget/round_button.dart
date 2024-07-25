import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';

enum RoundButtonType { primary, secondary, line }

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? lineColor;
  final double width;
  final double radius;
  final VoidCallback onPressed;

  const RoundButton(
      {super.key,
      required this.title,
      this.type = RoundButtonType.primary,
      this.height = 60,
      this.fontSize = 17,
      this.fontWeight = FontWeight.normal,
      this.width = double.maxFinite,
      this.lineColor,
      this.radius = 30,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: type == RoundButtonType.primary
              ? TColor.primary
              : type == RoundButtonType.secondary
                  ? TColor.secondary
                  :  Colors.transparent,
          border: type == RoundButtonType.line
              ? Border.all(color: lineColor ?? TColor.secondary, width: 2)
              : null,
          borderRadius: BorderRadius.circular(radius),
        ),
        height: height,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: type == RoundButtonType.line
                  ? (lineColor ?? TColor.primaryText)
                  : Colors.white,
              fontSize: fontSize,
              fontWeight: fontWeight),
        ),
      ),
    );
  }
}
