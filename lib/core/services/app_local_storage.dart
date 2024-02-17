import 'package:shared_preferences/shared_preferences.dart';

class AppLocal {
  static String imageKey = 'IMAGE';
  static String nameKey = 'Name';
  static String isUploadedKey = 'ISUPLOADED';

  static cacheDataX(String key, value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (value is int) {
      prefs.setInt(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else {
      prefs.setString(key, value);
    }
  }

  static Future<dynamic> getCachedDataX(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

//طريقة مختلفة
  static Future<String> getCachedData(String key) async {
    var sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getString(key) ?? '';
  }

  static cacheData(String key, String data) async {
    var sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.setString(key, data);
  }

  static cacheBool(String key, bool data) async {
    var sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.setBool(key, data);
  }

  static Future<bool> getBool(String key) async {
    var sharedPrefs = await SharedPreferences.getInstance();
    return sharedPrefs.getBool(key) ?? false;
  }
}
