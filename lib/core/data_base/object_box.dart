import 'package:path_provider/path_provider.dart';
import 'package:singelton_dars/objectbox.g.dart';

class LocalDateBase {
  static LocalDateBase? _database;
  static Store? _store;

  LocalDateBase._();

  static Future<LocalDateBase> getInstance() async {
    if (_database == null) {
      _database = LocalDateBase._();
      _store = await _init();
    }
    return _database!;
  }

  static Future<Store> _init() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: "${docsDir.path}/database");
    return store;
  }
}
