import 'dart:async';

import 'package:repository_viewer/core/shared_provider/preferences.dart';

class SharedPreferenceHelper {
  final Preference _sharedPreference;

  const SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  Future<void> saveAuthToken(String authToken) async {
    await _sharedPreference.setString(PrefKeys.authToken, authToken);
  }

  Future<void> saveProfilePhoto(String profilePhotoUrl) async {
    await _sharedPreference.setString(
        PrefKeys.profileImageUrl, profilePhotoUrl);
  }

  Future<void> saveProfileFirstName(String profileFirstName) async {
    await _sharedPreference.setString(
        PrefKeys.profileFirstlName, profileFirstName);
  }

  Future<void> saveProfileLastName(String profileLastName) async {
    await _sharedPreference.setString(
        PrefKeys.profileLastName, profileLastName);
  }

  Future<void> saveDivision(String division) async {
    await _sharedPreference.setString(PrefKeys.division, division);
  }

  String? get profilePhotoUrl {
    return _sharedPreference.getString(PrefKeys.profileImageUrl);
  }

  String? get authToken {
    return _sharedPreference.getString(PrefKeys.authToken);
  }

  String? get getProfileName {
    return '${_sharedPreference.getString(PrefKeys.profileFirstlName)} ${_sharedPreference.getString(PrefKeys.profileLastName)}';
  }

  String? get getDivision {
    return _sharedPreference.getString(PrefKeys.division);
  }

  Future<bool> removeAuthToken() async {
    return _sharedPreference.remove(PrefKeys.authToken);
  }

  Future<void> saveIsLoggedIn(bool value) async {
    await _sharedPreference.setBool(PrefKeys.isLoggedIn, value);
  }

  bool get isLoggedIn {
    return _sharedPreference.getBool(PrefKeys.isLoggedIn) ?? false;
  }

  Future<void> clear() async {
    await _sharedPreference.clear();
  }
}

mixin PrefKeys {
  static const String isLoggedIn = "isLoggedIn";
  static const String authToken = "authToken";

  static const profileImageUrl = "profile_pic";
  static const profileFirstlName = "profile_first_name";
  static const profileLastName = "profile_last_name";

  static const presentAddress = "profile_present_address";

  static const nidNo = "nid_no";

  static const gender = "gender";
  static const mail = "mail";
  static const mobile = "mobile";

  static const division = "division";
  static const district = "district";
  static const thana = "thana";
}
