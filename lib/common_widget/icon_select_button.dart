import 'package:flutter/material.dart';
import 'package:maintenance_service_app/common/color_extension.dart';

class IconSelectButton extends StatelessWidget {
  final String icon;
  final bool isSelect;
  final VoidCallback onPressed;

  const IconSelectButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.isSelect = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(60),
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isSelect ? TColor.primary : Colors.white,
            borderRadius: BorderRadius.circular(60),
            boxShadow: const [BoxShadow(color: Colors.black12)]),
        child: Image.asset(
          icon,
          width: 25,
          height: 25,
          color: isSelect ? Colors.white : TColor.primaryText,
        ),
      ),
    );
  }
}
