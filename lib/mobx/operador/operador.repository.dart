import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:gpi/mobx/operador/operador.repository.interface.dart';
import 'package:gpi/model/operador.model.dart';

class OperadorRepository extends IOperadorRepository {
  @override
  Future<List<Operador>> fetchOperadores() async {
    List<Operador> list = [];

    final String response =
        await rootBundle.loadString('assets/json/operadores.json');
    final items = await json.decode(response);
    final operadores = items.map((i) => Operador.fromJson(i)).toList();
    operadores.forEach((o) {
      list.add(o);
    });

    return list;
  }
}
