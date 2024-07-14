import 'package:flutter/material.dart';

class TColor {
  static Color get primary => const Color(0xffffd700);
  static Color get secondary => const Color(0xff022C43);
  static Color get primaryText => const Color(0xff022C43);
  static Color get secondaryText => const Color(0xff878787);
  static Color get title => const Color(0xff312C66);
  static Color get placeholder => const Color(0xffa4a4a4);
  static Color get chatTextBG => const Color(0xff115173);
}


extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
