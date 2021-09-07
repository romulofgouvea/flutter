import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/android/android.app.dart';

void main() {
  if (Platform.isIOS) {
  } else {
    runApp(AndroidApp());
  }
}
