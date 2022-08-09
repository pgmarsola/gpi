class Cursos {
  String? key;
  int? data;
  String? certificado;

  Cursos({this.key, this.data, this.certificado});

  Cursos.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    data = json['data'];
    certificado = json['certificado'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['data'] = this.data;
    data['certificado'] = this.certificado;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'data': data,
      'certificado': certificado,
    };
  }
}
