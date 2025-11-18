import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  final SharedPreferences _sharedPreferences;

  AppSharedPreferences(this._sharedPreferences);

  Future<void> setLoggedIn() async {
    await _sharedPreferences.setBool(
      'loggedIn',
      true,
    );
  }

  bool isLoggedIn() {
    return _sharedPreferences.getBool('loggedIn') ?? false;
  }
}
