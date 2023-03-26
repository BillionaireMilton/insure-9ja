import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5000 = fromHex('#00f5f7ff');

  static Color gray5001 = fromHex('#f9f9fb');

  static Color gray5002 = fromHex('#f9fafb');

  static Color gray5003 = fromHex('#fafafa');

  static Color cyan50D801 = fromHex('#d8e7fbf9');

  static Color blueGray10066 = fromHex('#66ccd1d4');

  static Color black90090 = fromHex('#90020205');

  static Color blueGray900A2 = fromHex('#a2333333');

  static Color green900 = fromHex('#067d19');

  static Color black9003f = fromHex('#3f000000');

  static Color black90001 = fromHex('#030319');

  static Color cyan5001 = fromHex('#eafaf8');

  static Color blueGray700 = fromHex('#50555c');

  static Color blueGray900 = fromHex('#333333');

  static Color black90003 = fromHex('#010105');

  static Color black90002 = fromHex('#020205');

  static Color deepOrange100 = fromHex('#efc6a9');

  static Color gray600 = fromHex('#707684');

  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray100 = fromHex('#d1d5db');

  static Color blueGray300 = fromHex('#a0a7b0');

  static Color redA200 = fromHex('#ff5c5c');

  static Color gray200 = fromHex('#e5e7eb');

  static Color bluegray400 = fromHex('#888888');

  static Color green90001 = fromHex('#077d1a');

  static Color cyan50 = fromHex('#eaf9f8');

  static Color black90019 = fromHex('#19000000');

  static Color gray70002 = fromHex('#565656');

  static Color whiteA701 = fromHex('#ffffff');

  static Color whiteA700 = fromHex('#fefefe');

  static Color indigo800 = fromHex('#2d3290');

  static Color gray70001 = fromHex('#555555');

  static Color teal40001 = fromHex('#24b2a5');

  static Color cyan50D8 = fromHex('#d8e6faf8');

  static Color gray90075 = fromHex('#75101522');

  static Color blueGray50 = fromHex('#e8f3f1');

  static Color blueGray10001 = fromHex('#cbced5');

  static Color green800 = fromHex('#198147');

  static Color gray50 = fromHex('#f5f7ff');

  static Color teal400 = fromHex('#199a8e');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#adadad');

  static Color blueGray800 = fromHex('#3b4453');

  static Color teal40002 = fromHex('#12b97d');

  static Color gray700 = fromHex('#666666');

  static Color black900A2 = fromHex('#a2000000');

  static Color teal40075 = fromHex('#75199a8e');

  static Color gray500 = fromHex('#979797');

  static Color blueGray400 = fromHex('#898a8d');

  static Color gray900 = fromHex('#101522');

  static Color gray90001 = fromHex('#101623');

  static Color tealA400 = fromHex('#36dda0');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color whiteA70001 = fromHex('#ffffff');

  static Color gray90090 = fromHex('#90101623');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
