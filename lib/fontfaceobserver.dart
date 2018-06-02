/*
 * observer.dart
 *
 * Purpose:
 *
 * Description:
 *    This is a Dart Js InterOp to https://github.com/bramstein/fontfaceobserver
 *
 * History:
 *    06/01/2018, Created by Henri Chen <henrichen@potix.com>
 *
 * Copyright (c) 2018 Potix Corporation. All Rights Reserved.
 */
library fontfaceobserver;

import 'dart:async' show Future, Completer;
import 'package:js/js.dart' show allowInterop;
import 'src/fontfaceobserver_js.dart';
export 'src/fontfaceobserver_js.dart' show FontOptions;

class FontFaceObserver {
  final FontFaceObserverJS _interop;
  FontFaceObserver(String family, [FontOptions options])
    : this._interop = new FontFaceObserverJS(family, options);

  /**
   * Return true/false of Future.
   * + text the test loading text (pass in String with special unicodes to hint the loader)
   * + timeout the timeout time in milliseconds; default to 3000 ms(3 seconds).
   */
  Future<bool> load([String text, int timeout]) {
    final completer = new Completer<bool>();
    _interop.load(text, timeout)
      .then(
        allowInterop((_) => completer.complete(true)), // resolve
        allowInterop((_) => completer.complete(false)) // reject
      );
    return completer.future;
  }
}
