import 'cursos.model.dart';

class Operador {
  String? filial;
  String? supervisor;
  String? coordenador;
  String? nomeFuncionario;
  String? cpf;
  String? nomeEmpresa;
  String? dataAdmissao;
  String? cargo;
  int? status;
  String? tipo;
  List<Cursos>? cursos;

  Operador(
      {this.filial,
      this.supervisor,
      this.coordenador,
      this.nomeFuncionario,
      this.cpf,
      this.nomeEmpresa,
      this.dataAdmissao,
      this.cargo,
      this.status,
      this.tipo,
      this.cursos});

  Operador.fromJson(Map<String, dynamic> json) {
    filial = json['filial'];
    supervisor = json['supervisor'];
    coordenador = json['coordenador'];
    nomeFuncionario = json['nome_funcionario'];
    cpf = json['cpf'];
    nomeEmpresa = json['nome_empresa'];
    dataAdmissao = json['data_admissao'];
    cargo = json['cargo '];
    status = json['status'];
    tipo = json['tipo'];
    if (json['cursos'] != null) {
      cursos = <Cursos>[];
      json['cursos'].forEach((v) {
        cursos!.add(new Cursos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['filial'] = this.filial;
    data['supervisor'] = this.supervisor;
    data['coordenador'] = this.coordenador;
    data['nome_funcionario'] = this.nomeFuncionario;
    data['cpf'] = this.cpf;
    data['nome_empresa'] = this.nomeEmpresa;
    data['data_admissao'] = this.dataAdmissao;
    data['cargo '] = this.cargo;
    data['status'] = this.status;
    data['tipo'] = this.tipo;
    if (this.cursos != null) {
      data['cursos'] = this.cursos!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'filial': filial,
      'supervisor': supervisor,
      'coordenador': coordenador,
      'nomeFuncionario': nomeFuncionario,
      'cpf': cpf,
      'nomeEmpresa': nomeEmpresa,
      'dataAdmissao': dataAdmissao,
      'cargo': cargo,
      'status': status,
      'tipo': tipo,
    };
  }
}
