import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:singelton_dars/features/profile/data/models/profile_model.dart';
import 'package:singelton_dars/features/profile/domain/entities/entities.dart';

class HiveRepository {
  HiveRepository._();
  static Box? _hive;
  static HiveRepository? _storegaHive;

  static Future<HiveRepository> getInstance() async {
    if (_storegaHive == null) {
      final storege = HiveRepository._();
      await storege.init();
      _storegaHive = storege;
    }
    return _storegaHive!;
  }

  Future<void> init() async {
    const boxName = "Feruzbek";
    Directory directory = await getApplicationCacheDirectory();
    Hive.init(directory.path);
    _hive = await Hive.openBox<dynamic>(boxName);
  }

  static Future<void> putName(String name, String adress) async {
    await _hive?.put(
      "profilel",
      ProfileModel(
        name: name,
        adress: adress,
      ),
    );
  }

  static  getName() {
    return _hive?.get(
      "profilel",
      defaultValue: "Ishlamadi",
    );
  }
}
