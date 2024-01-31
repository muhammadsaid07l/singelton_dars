import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository {
  static StorageRepository? _storageUtil;
  static SharedPreferences? _preferences;

  static Future<StorageRepository> getInstance() async {
    if (_storageUtil == null) {
      final secureStorage = StorageRepository._();
      await secureStorage._init();
      _storageUtil = secureStorage;
    }
    return _storageUtil!;
  }

  StorageRepository._();
  Future _init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static bool getStatus() {
    return _preferences?.getBool("isAuthentificated") ?? false;
  }

  static Future<bool?> setStatus(bool value) async {
    return await _preferences?.setBool("isAuthentificated", value);
  }
}
