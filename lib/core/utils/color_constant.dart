import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color teal70002 = fromHex('#147f64');

  static Color teal70001 = fromHex('#157c62');

  static Color teal70004 = fromHex('#138568');

  static Color teal70003 = fromHex('#138669');

  static Color black900B2 = fromHex('#b2000000');

  static Color red200 = fromHex('#d88b8b');

  static Color black90090 = fromHex('#90000000');

  static Color teal80056 = fromHex('#56006c51');

  static Color orange20090 = fromHex('#90ffcb77');

  static Color gray90019 = fromHex('#19093429');

  static Color orange200B2 = fromHex('#b2ffcb77');

  static Color greenA700 = fromHex('#14b724');

  static Color orange2007f = fromHex('#7fffcb77');

  static Color black90000 = fromHex('#00000000');

  static Color yellow800 = fromHex('#d4932a');

  static Color teal700 = fromHex('#138569');

  static Color teal900 = fromHex('#005a43');

  static Color blueGray90001 = fromHex('#2f333c');

  static Color blueGray900 = fromHex('#373737');

  static Color blueGray40033 = fromHex('#33899894');

  static Color gray40051 = fromHex('#51cbccc4');

  static Color gray600 = fromHex('#687974');

  static Color gray400 = fromHex('#c3c9c8');

  static Color blueGray100 = fromHex('#d4d8d7');

  static Color blueGray300 = fromHex('#959aa9');

  static Color redA200 = fromHex('#ff4747');

  static Color blueGray500 = fromHex('#599082');

  static Color gray200 = fromHex('#e8e8e8');

  static Color orange200 = fromHex('#ffcb77');

  static Color blue50 = fromHex('#e8f0ff');

  static Color yellow8007f = fromHex('#7fd4932a');

  static Color black90099 = fromHex('#99000000');

  static Color blueGray80014 = fromHex('#143a544c');

  static Color gray40001 = fromHex('#b9c2c0');

  static Color gray40002 = fromHex('#c4c4c4');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40002 = fromHex('#888888');

  static Color blueGray40001 = fromHex('#7c8a86');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray50 = fromHex('#eaf4f1');

  static Color blueGray10001 = fromHex('#c2d8d2');

  static Color blueGray80090 = fromHex('#90445550');

  static Color teal800Cc = fromHex('#cc006c51');

  static Color green400 = fromHex('#4cd964');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color teal800 = fromHex('#006c51');

  static Color black900 = fromHex('#000000');

  static Color blueGray800 = fromHex('#445550');

  static Color blueGray5001 = fromHex('#eaf4f2');

  static Color black9006d = fromHex('#6d000000');

  static Color blueGray5002 = fromHex('#eef0f3');

  static Color blueGray200 = fromHex('#9ac6bb');

  static Color gray500 = fromHex('#a5a5a5');

  static Color blueGray5000 = fromHex('#00eaf4f2');

  static Color blueGray400 = fromHex('#899894');

  static Color whiteA700A5 = fromHex('#a5ffffff');

  static Color blueGray10099 = fromHex('#99d9dada');

  static Color gray900 = fromHex('#071b16');

  static Color teal80000 = fromHex('#00006c51');

  static Color gray30003 = fromHex('#d6e9e5');

  static Color gray300 = fromHex('#dfdfdf');

  static Color blueGray80001 = fromHex('#3a544d');

  static Color gray30002 = fromHex('#dae4e1');

  static Color gray30001 = fromHex('#dde6e4');

  static Color orange100 = fromHex('#f4dfb4');

  static Color gray100 = fromHex('#f7f6f6');

  static Color green40033 = fromHex('#334cd964');

  static Color yellow80033 = fromHex('#33d4932a');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
