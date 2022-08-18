import 'package:gpi/helper/setting/db.setting.dart';
import 'package:gpi/model/cursos.model.dart';
import 'package:sqflite/sqflite.dart';

import 'db.service.dart';

class CursosService {
  final dbHelper = DBHelper();

  Future<List<Cursos>> all() async {
    try {
      // ignore: no_leading_underscores_for_local_identifiers
      final Database _db = await dbHelper.initDatabase();
      final List<Map<String, dynamic>> maps = await _db.query(TB_CURSOS);
      var cursos = List.generate(maps.length, (i) {
        return Cursos(
          key: maps[i]['key'],
          data: maps[i]['data'],
          certificado: maps[i]['certificado'],
        );
      });
      return cursos;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return <Cursos>[];
    }
  }

  Future create(Cursos model) async {
    // ignore: no_leading_underscores_for_local_identifiers
    final Database _db = await dbHelper.initDatabase();
    try {
      await _db.insert(TB_CURSOS, model.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      // ignore: avoid_print
      print("Deu certo criar cursos!");
    } catch (e) {
      // ignore: avoid_print
      print("Erro ao criar lista de cursos: $e");
      return;
    }
  }

  Future<int> delete() async {
    // ignore: no_leading_underscores_for_local_identifiers
    final Database _db = await dbHelper.initDatabase();
    return await _db.delete(TB_CURSOS);
  }
}
