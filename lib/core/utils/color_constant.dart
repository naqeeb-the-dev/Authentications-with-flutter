import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray50Bf = fromHex('#bffffcf2');

  static Color deepPurple500 = fromHex('#7f30d3');

  static Color lightBlue402 = fromHex('#33afe3');

  static Color lightBlue401 = fromHex('#33bee7');

  static Color lightBlue400 = fromHex('#32bde7');

  static Color black9003f = fromHex('#3f000000');

  static Color indigo3007f = fromHex('#7f706fe5');

  static Color gray50 = fromHex('#fafafa');

  static Color black90087 = fromHex('#87020e12');

  static Color black900 = fromHex('#000000');

  static Color yellow800 = fromHex('#f9a826');

  static Color black9004c = fromHex('#4c000000');

  static Color gray500 = fromHex('#adadad');

  static Color blue700 = fromHex('#356dd3');

  static Color whiteA700A5 = fromHex('#a5ffffff');

  static Color gray200 = fromHex('#ececec');

  static Color gray100 = fromHex('#f4f4f4');

  static Color cyan200 = fromHex('#72ddeb');

  static Color bluegray800 = fromHex('#3a4053');

  static Color cyan201 = fromHex('#6ed2e9');

  static Color gray100Bf = fromHex('#bff5f5f5');

  static Color gray50A5 = fromHex('#a5fffcf2');

  static Color bluegray400 = fromHex('#888888');

  static Color blue400 = fromHex('#54a1d9');

  static Color indigo502 = fromHex('#3649ca');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo500 = fromHex('#364fcc');

  static Color indigo600 = fromHex('#3731c5');

  static Color indigo501 = fromHex('#364ecb');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
