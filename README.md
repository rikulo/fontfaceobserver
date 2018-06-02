# fontfaceobserver

A Dart wrapper of Javascript library fontfaceobserver(v2.0.13)
https://github.com/bramstein/fontfaceobserver

BSD-style [license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

    import 'package:fontfaceobserver/fontfaceobserver.dart';

    main() {
      final ffo = new FontFaceObserver("Font Awesome 5 Free", new FontOptions(weight: 'bold'));
      ffo.load().then((ok) {
        if (ok) {
          print("Font is loaded.");
        } else {
          print("Time out! Font is not loaded.");
        }
      }
    }

