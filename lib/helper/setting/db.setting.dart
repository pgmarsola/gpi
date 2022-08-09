const String DATABASE_NAME = "gpi.db";

const String TB_OPERADOR = "operador";
const String TB_CURSOS = "cursos";

const String CREATE_TABLE_OPERADOR_SCRIPT =
    "CREATE TABLE operador(id INTEGER PRIMARY KEY, filial TEXT, supervisor TEXT, coordenador TEXT, nomeFuncionario TEXT, cpf TEXT, nomeEmpresa TEXT, dataAdmissao INTEGER, cargo TEXT, status INTEGER, tipo TEXT)";

const String CREATE_TABLE_CURSOS_SCRIPT =
    "CREATE TABLE cursos(id INTEGER PRIMARY KEY, key TEXT, data INTEGER, certificado TEXT)";
