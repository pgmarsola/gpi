// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operador.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OperadorController on _OperadorControllerBase, Store {
  late final _$operadorAtom =
      Atom(name: '_OperadorControllerBase.operador', context: context);

  @override
  Operador? get operador {
    _$operadorAtom.reportRead();
    return super.operador;
  }

  @override
  set operador(Operador? value) {
    _$operadorAtom.reportWrite(value, super.operador, () {
      super.operador = value;
    });
  }

  late final _$operadoresAtom =
      Atom(name: '_OperadorControllerBase.operadores', context: context);

  @override
  ObservableList<Operador>? get operadores {
    _$operadoresAtom.reportRead();
    return super.operadores;
  }

  @override
  set operadores(ObservableList<Operador>? value) {
    _$operadoresAtom.reportWrite(value, super.operadores, () {
      super.operadores = value;
    });
  }

  late final _$loadAtom =
      Atom(name: '_OperadorControllerBase.load', context: context);

  @override
  bool get load {
    _$loadAtom.reportRead();
    return super.load;
  }

  @override
  set load(bool value) {
    _$loadAtom.reportWrite(value, super.load, () {
      super.load = value;
    });
  }

  late final _$loadOperadoresAsyncAction =
      AsyncAction('_OperadorControllerBase.loadOperadores', context: context);

  @override
  Future loadOperadores() {
    return _$loadOperadoresAsyncAction.run(() => super.loadOperadores());
  }

  @override
  String toString() {
    return '''
operador: ${operador},
operadores: ${operadores},
load: ${load}
    ''';
  }
}
