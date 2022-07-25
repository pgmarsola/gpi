import 'package:gpi/helper/setting/db.setting.dart';
import 'package:gpi/model/cursos.model.dart';
import 'package:gpi/model/operador.model.dart';
import 'package:sqflite/sqflite.dart';

import 'db.service.dart';

class CursosService {
  final dbHelper = DBHelper();

  Future<List<Cursos>> all() async {
    try {
      final Database _db = await dbHelper.initDatabase();
      final List<Map<String, dynamic>> maps = await _db.query(TB_CURSOS);
      var cursos = List.generate(maps.length, (i) {
        return Cursos(
          bx: maps[i]['cargo'],
          certificacaoModNivel1: maps[i]['cargo'],
          certificacaoModNivel2: maps[i]['cargo'],
          certificacaoNeolift: maps[i]['cargo'],
          certificacaoRegulagemS001: maps[i]['cargo'],
          certificacaoS001: maps[i]['cargo'],
          certificacaoS3600: maps[i]['cargo'],
          certificacaoS5500: maps[i]['cargo'],
          certificacaoS7050: maps[i]['cargo'],
          certificacaoS9300: maps[i]['cargo'],
          certificacaoS9500: maps[i]['cargo'],
          cmgEntry: maps[i]['cargo'],
          comissionamentoS001: maps[i]['cargo'],
          es1CompactoInstalacao: maps[i]['cargo'],
          es1Montagem: maps[i]['cargo'],
          es3Instalacao: maps[i]['cargo'],
          es5CompactoInstalacao: maps[i]['cargo'],
          es5Instalacao: maps[i]['cargo'],
          escadaInstalacao: maps[i]['cargo'],
          guiaS001: maps[i]['cargo'],
          icamento: maps[i]['cargo'],
          ipa: maps[i]['cargo'],
          mx: maps[i]['cargo'],
          neolift: maps[i]['cargo'],
          nr10: maps[i]['cargo'],
          nr35: maps[i]['cargo'],
          reciclagemIcamento: maps[i]['cargo'],
          reciclagemIpa: maps[i]['cargo'],
          reciclagemNr10: maps[i]['cargo'],
          recilagemNr35: maps[i]['cargo'],
          s001: maps[i]['cargo'],
          s3600: maps[i]['cargo'],
          s5500: maps[i]['cargo'],
          s7050: maps[i]['cargo'],
          tbm: maps[i]['cargo'],
          tm1: maps[i]['cargo'],
          tm2: maps[i]['cargo'],
          tm3: maps[i]['cargo'],
          tmm: maps[i]['cargo'],
          treinamentoRegulagem: maps[i]['cargo'],
        );
      });
      return cursos;
    } catch (e) {
      print(e);
      return <Cursos>[];
    }
  }

  Future create(Cursos model) async {
    final Database _db = await dbHelper.initDatabase();
    try {
      await _db.insert(TB_CURSOS, model.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      print("Deu certo criar cursos!");
    } catch (e) {
      print("Erro ao criar lista de cursos: $e");
      return;
    }
  }

  Future<int> delete(int id) async {
    final Database _db = await dbHelper.initDatabase();
    return await _db.delete(TB_CURSOS, where: '$id = ?', whereArgs: [id]);
  }
}
