import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';

class IconTitleButton extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onPressed;

  const IconTitleButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: 25,
            height: 25,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(color: TColor.secondaryText, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
