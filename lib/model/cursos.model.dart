class Cursos {
  String? reciclagemIpa;
  String? reciclagemNr10;
  String? nr35;
  String? recilagemNr35;
  String? reciclagemIcamento;
  String? tbm;
  String? tm1;
  String? tm2;
  String? tm3;
  String? guiaS001;
  String? certificacaoS001;
  String? treinamentoRegulagem;
  String? s3600;
  String? es1CompactoInstalacao;
  String? ipa;
  String? nr10;
  String? icamento;
  String? s5500;
  String? tmm;
  String? cmgEntry;
  String? comissionamentoS001;
  String? es1Montagem;
  String? bx;
  String? s001;
  String? certificacaoS5500;
  String? certificacaoRegulagemS001;
  String? mx;
  String? certificacaoS3600;
  String? neolift;
  String? certificacaoNeolift;
  String? certificacaoModNivel2;
  String? s7050;
  String? certificacaoS7050;
  String? es3Instalacao;
  String? es5CompactoInstalacao;
  String? es5Instalacao;
  String? escadaInstalacao;
  String? certificacaoS9300;
  String? certificacaoS9500;
  String? certificacaoModNivel1;

  Cursos(
      {this.bx,
      this.certificacaoModNivel1,
      this.certificacaoModNivel2,
      this.certificacaoNeolift,
      this.certificacaoRegulagemS001,
      this.certificacaoS001,
      this.certificacaoS3600,
      this.certificacaoS5500,
      this.certificacaoS7050,
      this.certificacaoS9300,
      this.certificacaoS9500,
      this.cmgEntry,
      this.comissionamentoS001,
      this.es1CompactoInstalacao,
      this.es1Montagem,
      this.es3Instalacao,
      this.es5CompactoInstalacao,
      this.es5Instalacao,
      this.escadaInstalacao,
      this.guiaS001,
      this.icamento,
      this.ipa,
      this.mx,
      this.neolift,
      this.nr10,
      this.nr35,
      this.reciclagemIcamento,
      this.reciclagemIpa,
      this.reciclagemNr10,
      this.recilagemNr35,
      this.s001,
      this.s3600,
      this.s5500,
      this.s7050,
      this.tbm,
      this.tm1,
      this.tm2,
      this.tm3,
      this.tmm,
      this.treinamentoRegulagem});

  Cursos.fromJson(Map<String, dynamic> json) {
    reciclagemIpa = json['reciclagem_ipa'];
    reciclagemNr10 = json['reciclagem_nr10'];
    nr35 = json['nr35'];
    recilagemNr35 = json['reciclagem_nr35'];
    reciclagemIcamento = json['reciclagem_icamento'];
    tbm = json['tbm'];
    tm1 = json['tm1'];
    tm2 = json['tm2'];
    tm3 = json['tm3'];
    guiaS001 = json['guia_s001'];
    certificacaoS001 = json['certificacao_s001'];
    treinamentoRegulagem = json['treinamento_regulagem'];
    s3600 = json['s3600'];
    es1CompactoInstalacao = json['es1_compacto_instalacao'];
    ipa = json['ipa'];
    nr10 = json['nr10'];
    icamento = json['icamento'];
    s5500 = json['s5500'];
    tmm = json['tmm'];
    cmgEntry = json['cmg_entry'];
    comissionamentoS001 = json['comissionamento_s001'];
    es1Montagem = json['es1_montagem'];
    bx = json['bx'];
    s001 = json['s001'];
    certificacaoS5500 = json['certificacao_s5500'];
    certificacaoRegulagemS001 = json['certificacao_regulagem_s001'];
    mx = json['mx'];
    certificacaoS3600 = json['certificacao_s3600'];
    neolift = json['neolift'];
    certificacaoNeolift = json['certificacao_neolift'];
    certificacaoModNivel2 = json['certificacao_mod_nivel2'];
    s7050 = json['s7050'];
    certificacaoS7050 = json['certificacao_s7050'];
    es3Instalacao = json['es3_instalacao'];
    es5CompactoInstalacao = json['es5_compacto_instalacao'];
    es5Instalacao = json['es5_instalacao'];
    escadaInstalacao = json['escada_instalacao'];
    certificacaoS9300 = json['certificacao_s9300'];
    certificacaoS9500 = json['certificacao_s9500'];
    certificacaoModNivel1 = json['certificacao_mod_nivel1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reciclagem_ipa'] = this.reciclagemIpa;
    data['reciclagem_nr10'] = this.reciclagemNr10;
    data['nr35'] = this.nr35;
    data['reciclagem_nr35'] = this.recilagemNr35;
    data['reciclagem_icamento'] = this.reciclagemIcamento;
    data['tbm'] = this.tbm;
    data['tm1'] = this.tm1;
    data['tm2'] = this.tm2;
    data['tm3'] = this.tm3;
    data['guia_s001'] = this.guiaS001;
    data['certificacao_s001'] = this.certificacaoS001;
    data['treinamento_regulagem'] = this.treinamentoRegulagem;
    data['s3600'] = this.s3600;
    data['es1_compacto_instalacao'] = this.es1CompactoInstalacao;
    data['ipa'] = this.ipa;
    data['nr10'] = this.nr10;
    data['icamento'] = this.icamento;
    data['s5500'] = this.s5500;
    data['tmm'] = this.tmm;
    data['cmg_entry'] = this.cmgEntry;
    data['comissionamento_s001'] = this.comissionamentoS001;
    data['es1_montagem'] = this.es1Montagem;
    data['bx'] = this.bx;
    data['s001'] = this.s001;
    data['certificacao_s5500'] = this.certificacaoS5500;
    data['certificacao_regulagem_s001'] = this.certificacaoRegulagemS001;
    data['mx'] = this.mx;
    data['certificacao_s3600'] = this.certificacaoS3600;
    data['neolift'] = this.neolift;
    data['certificacao_neolift'] = this.certificacaoNeolift;
    data['certificacao_mod_nivel2'] = this.certificacaoModNivel2;
    data['s7050'] = this.s7050;
    data['certificacao_s7050'] = this.certificacaoS7050;
    data['es3_instalacao'] = this.es3Instalacao;
    data['es5_compacto_instalacao'] = this.es5CompactoInstalacao;
    data['es5_instalacao'] = this.es5Instalacao;
    data['escada_instalacao'] = this.escadaInstalacao;
    data['certificacao_s9300'] = this.certificacaoS9300;
    data['certificacao_s9500'] = this.certificacaoS9500;
    data['certificacao_mod_nivel1'] = this.certificacaoModNivel1;
    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'reciclagemIpa': reciclagemIpa,
      'reciclagemNr10': reciclagemNr10,
      'nr35': nr35,
      'recilagemNr35': recilagemNr35,
      'reciclagemIcamento': reciclagemIcamento,
      'tbm': tbm,
      'tm1': tm1,
      'tm2': tm2,
      'tm3': tm3,
      'guiaS001': guiaS001,
      'certificacaoS001': certificacaoS001,
      'treinamentoRegulagem': treinamentoRegulagem,
      's3600': s3600,
      'es1CompactoInstalacao': es1CompactoInstalacao,
      'ipa': ipa,
      'nr10': nr10,
      'icamento': icamento,
      's5500': s5500,
      'tmm': tmm,
      'cmgEntry': cmgEntry,
      'comissionamentoS001': comissionamentoS001,
      'es1Montagem': es1Montagem,
      'bx': bx,
      's001': s001,
      'certificacaoS5500': certificacaoS5500,
      'certificacaoRegulagemS001': certificacaoRegulagemS001,
      'mx': mx,
      'certificacaoS3600': certificacaoS3600,
      'neolift': neolift,
      'certificacaoNeolift': certificacaoNeolift,
      'certificacaoModNivel2': certificacaoModNivel2,
      's7050': s7050,
      'certificacaoS7050': certificacaoS7050,
      'es3Instalacao': es3Instalacao,
      'es5CompactoInstalacao': es5CompactoInstalacao,
      'es5Instalacao': es5Instalacao,
      'escadaInstalacao': escadaInstalacao,
      'certificacaoS9300': certificacaoS9300,
      'certificacaoS9500': certificacaoS9500,
      'certificacaoModNivel1': certificacaoModNivel1,
    };
  }
}
