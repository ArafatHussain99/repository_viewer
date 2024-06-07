import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repository_viewer/core/shared_provider/preferences.dart';

import '../network/dio_client.dart';
import 'helper.dart';

final preferencesProvider = Provider<Preference>((ref) {
  return Preference();
});

final sharedPrefHelperProvider = Provider<SharedPreferenceHelper>((ref) {
  return SharedPreferenceHelper(ref.read(preferencesProvider));
});

String basicAuth =
    'Basic ${base64Encode(utf8.encode("demo-client:demo-secret"))}';

final dioInstanceProvider = Provider<Dio>((ref) {
  String? token = ref.watch(sharedPrefHelperProvider).authToken;
  final dio = Dio();
  if (token == null) {
    dio.options.headers = {"authorization": basicAuth};
  } else {
    dio.options.headers = {"authorization": "Bearer $token"};
  }
  return Dio();
});

final dioClientProvider = Provider<DioClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return DioClient(dio);
});
