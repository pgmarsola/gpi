import 'package:gpi/helper/setting/db.setting.dart';
import 'package:gpi/model/operador.model.dart';
import 'package:sqflite/sqflite.dart';

import 'db.service.dart';

class OperadorService {
  final dbHelper = DBHelper();

  Future<List<Operador>> all() async {
    try {
      final Database _db = await dbHelper.initDatabase();
      final List<Map<String, dynamic>> maps = await _db.query(TB_OPERADOR);
      var operador = List.generate(maps.length, (i) {
        return Operador(
          cargo: maps[i]['cargo'],
          coordenador: maps[i]['coordenador'],
          cpf: maps[i]['cpf'],
          dataAdmissao: maps[i]['dataAdmissao'],
          filial: maps[i]['filial'],
          nomeEmpresa: maps[i]['nomeEmpresa'],
          nomeFuncionario: maps[i]['nomeFuncionario'],
          status: maps[i]['status'],
          supervisor: maps[i]['supervisor'],
          tipo: maps[i]['tipo'],
        );
      });
      return operador;
    } catch (e) {
      print(e);
      return <Operador>[];
    }
  }

  Future create(Operador model) async {
    final Database _db = await dbHelper.initDatabase();
    try {
      await _db.insert(TB_OPERADOR, model.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
      print("Deu certo criar operador!");
    } catch (e) {
      print("Erro ao criar operador: $e");
      return;
    }
  }

  Future<int> delete(int id) async {
    final Database _db = await dbHelper.initDatabase();
    return await _db.delete(TB_OPERADOR, where: '$id = ?', whereArgs: [id]);
  }
}
