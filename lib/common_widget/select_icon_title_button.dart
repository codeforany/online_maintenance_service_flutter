import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';

class SelectIconTitleButton extends StatelessWidget {
  final String title;
  final String icon;
  final bool isSelect;
  final VoidCallback onPressed;

  const SelectIconTitleButton(
      {super.key,
      required this.title,
      required this.icon,
      this.isSelect = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: isSelect ? TColor.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
              border: isSelect ? null : Border.all(color: TColor.primary)
            ),
            alignment: Alignment.center,
            child: Image.asset(
              icon,
              width: 35,
              height: 35,
              color: isSelect ? TColor.primaryText : TColor.primary,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
              color: isSelect ? TColor.primaryText : TColor.secondaryText,
              fontSize: 12,
              fontWeight: isSelect ? FontWeight.bold : FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}
