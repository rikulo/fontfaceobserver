/*
 * main.dart
 *
 * Purpose:
 *
 * Description:
 *
 * History:
 *     06/01/2018, Created by Henri Chen<henrichen@potix.com>
 *
 * Copyright (C) 2018 Potix Corporation. All Rights Reserved.
 */
import 'package:fontfaceobserver/fontfaceobserver.dart';

main() async {
  final fonts = [
    ['Font Awesome 5 Free', 'bold'],
    ['Font Awesome 5 Free', 'normal'],
    ['Calibri', null],
  ];

  for (final font in fonts) {
    final ob1 = new FontFaceObserver(
        font[0], new FontOptions(weight: font[1]));
    ob1.load().then((okfail) {
      print('${okfail ? "Sucessfully" : "Fail to"} load Font "${font[0]}" with weight: ${font[1]}');
    });
  }
}
