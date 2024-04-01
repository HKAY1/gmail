import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gmail/main.dart';

class Scale {
  Scale._();
  static final Scale _instance = Scale._();
  factory Scale() => _instance;

  static late double? scale;
  static late MediaQueryData _media;

  static void initialize() {
    _media = MediaQuery.of(navigationKey.currentContext!);
    if (kIsWeb) {
      scale = _media.size.width / _media.size.height;
    } else {
      scale = _media.size.height / _media.size.width;
    }
  }

  static double get screenHeight => _media.size.height;
  static double get screenWidth => _media.size.width;
  static double currentScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double currentScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

extension ScaleFactor on num {
  double get toScale {
    if (Scale.scale == null) Scale.initialize();
    if (kIsWeb) {
      return this * Scale.scale! * 0.5;
    } else {
      return this * Scale.scale! * 0.45;
    }
  }
}
