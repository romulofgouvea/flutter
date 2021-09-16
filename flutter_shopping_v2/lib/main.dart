import 'dart:io' show Platform;

import 'package:flutter/widgets.dart';
import 'package:flutter_shopping_v2/ui/android/android.app.dart';

void main() {
  if (Platform.isIOS) {
  } else {
    runApp(AndroidApp());
  }
}
