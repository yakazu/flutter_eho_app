import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

class Compass with ChangeNotifier {
  static const ehoAngle = 255.0;

  double _angle = 0;
  double get angle => _angle;

  Compass() {
    FlutterCompass.events.listen((value) {
      // 恵方を差すように計算する
      // Transform.rotateで使用するため、ラジアンに変換する
      _angle = -1 * pi * ((value - ehoAngle) / 180);

      notifyListeners();
    });
  }
}
