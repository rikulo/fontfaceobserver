/*
 * observer.dart
 *
 * Purpose:
 *
 * Description:
 *    This is a Dart Js InterOp to https://github.com/bramstein/fontfaceobserver
 *    BSD license
 *
 * History:
 *    06/01/2018, Created by Henri Chen <henrichen@potix.com>
 *
 * Copyright (c) 2018 Potix Corporation. All Rights Reserved.
 */
@JS()
library fontfaceobserver.src.fontfaceobserver_js;

import "package:js/js.dart";

@JS('FontFaceObserver')
class FontFaceObserverJS {
  external FontFaceObserverJS(String family, [FontOptions options]);
  external load([String text, int timeout]);
}

/**
 * it must include values for:
 *   <font-size>
 *   <font-family>
 *   it may optionally include values for:
 *   + style:
 *     font-style: 'italic'
 *     font-variant : 'normal' / 'small-caps'
 *   + weight:
 *     font-weight: 'bold' / '400'
 *     font-size: '12pt', '15px'
 *
 *   font-style, font-variant and font-weight must precede font-size
 *   font-family must be the last value specified.
 *
 *   see https://developer.mozilla.org/en-US/docs/Web/CSS/font
 */
@JS()
@anonymous
class FontOptions {
  external String get style;
  external set style(String v);

  external String get weight;
  external set weight(String v);

  external String get stretch;
  external set stretch(String v);

  external factory FontOptions({
    String style,
    String weight,
    String stretch,
  });
}

//https://github.com/dart-lang/sdk/issues/27315
//see daniel-v commented on Mar 21, 2018
@JS('Promise')
class Promise<T> {
  external Promise(void executor(void resolve(T result), Function reject));
  external Promise then(void onFulfilled(T result), [Function onRejected]);
}
