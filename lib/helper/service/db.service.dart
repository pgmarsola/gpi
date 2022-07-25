import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:gpi/helper/setting/db.setting.dart';

class DBHelper {
  final int versionDB;

  DBHelper({this.versionDB = 1});

  Future<Database> initDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) async {
        await db.execute(CREATE_TABLE_OPERADOR_SCRIPT);
        await db.execute(CREATE_TABLE_CURSOS_SCRIPT);
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        await db.execute(CREATE_TABLE_OPERADOR_SCRIPT);
        await db.execute(CREATE_TABLE_CURSOS_SCRIPT);
      },
      version: versionDB,
    );
  }
}
