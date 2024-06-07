import 'dart:convert';
import 'dart:io' as io;

import '../constants/global_variable.dart';

extension FilePath on String {
  String convertToBase64() {
    final bytes = io.File(this).readAsBytesSync();
    String img64 = "${AppConstants.base64Prefix}${base64Encode(bytes)}";

    return img64;
  }
}
