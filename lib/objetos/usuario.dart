// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.id,
    required this.ativo,
    required this.email,
    required this.senha,
    this.telefone,
    required this.nome,
    this.cpf,
    this.cnpj,
    required this.tipoDeUsuario,
    this.pedidos,
    this.enderecoes,
  });

  int id;
  bool ativo;
  String email;
  String senha;
  dynamic telefone;
  String nome;
  dynamic cpf;
  dynamic cnpj;
  String tipoDeUsuario;
  dynamic pedidos;
  dynamic enderecoes;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    id: json["id"],
    ativo: json["ativo"],
    email: json["email"],
    senha: json["senha"],
    telefone: json["telefone"],
    nome: json["nome"],
    cpf: json["cpf"],
    cnpj: json["cnpj"],
    tipoDeUsuario: json["tipoDeUsuario"],
    pedidos: json["pedidos"],
    enderecoes: json["enderecoes"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "ativo": ativo,
    "email": email,
    "senha": senha,
    "telefone": telefone,
    "nome": nome,
    "cpf": cpf,
    "cnpj": cnpj,
    "tipoDeUsuario": tipoDeUsuario,
    "pedidos": pedidos,
    "enderecoes": enderecoes,
  };
}
