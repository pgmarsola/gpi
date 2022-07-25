import 'package:gpi/helper/setting/db.setting.dart';
import 'package:gpi/model/cursos.model.dart';
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
          bx: maps[i]['bx'],
          certificacaoModNivel1: maps[i]['certificacaoModNivel1'],
          certificacaoModNivel2: maps[i]['certificacaoModNivel2'],
          certificacaoNeolift: maps[i]['certificacaoNeolift'],
          certificacaoRegulagemS001: maps[i]['certificacaoRegulagemS001'],
          certificacaoS001: maps[i]['certificacaoS001'],
          certificacaoS3600: maps[i]['certificacaoS3600'],
          certificacaoS5500: maps[i]['certificacaoS5500'],
          certificacaoS7050: maps[i]['certificacaoS7050'],
          certificacaoS9300: maps[i]['certificacaoS9300'],
          certificacaoS9500: maps[i]['certificacaoS9500'],
          cmgEntry: maps[i]['cmgEntry'],
          comissionamentoS001: maps[i]['comissionamentoS001'],
          es1CompactoInstalacao: maps[i]['es1CompactoInstalacao'],
          es1Montagem: maps[i]['es1Montagem'],
          es3Instalacao: maps[i]['es3Instalacao'],
          es5CompactoInstalacao: maps[i]['es5CompactoInstalacao'],
          es5Instalacao: maps[i]['es5Instalacao'],
          escadaInstalacao: maps[i]['escadaInstalacao'],
          guiaS001: maps[i]['guiaS001'],
          icamento: maps[i]['icamento'],
          ipa: maps[i]['ipa'],
          mx: maps[i]['mx'],
          neolift: maps[i]['neolift'],
          nr10: maps[i]['nr10'],
          nr35: maps[i]['nr35'],
          reciclagemIcamento: maps[i]['reciclagemIcamento'],
          reciclagemIpa: maps[i]['reciclagemIpa'],
          reciclagemNr10: maps[i]['reciclagemNr10'],
          recilagemNr35: maps[i]['recilagemNr35'],
          s001: maps[i]['s001'],
          s3600: maps[i]['s3600'],
          s5500: maps[i]['s5500'],
          s7050: maps[i]['s7050'],
          tbm: maps[i]['tbm'],
          tm1: maps[i]['tm1'],
          tm2: maps[i]['tm2'],
          tm3: maps[i]['tm3'],
          tmm: maps[i]['tmm'],
          treinamentoRegulagem: maps[i]['treinamentoRegulagem'],
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
