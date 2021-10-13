// ignore_for_file: avoid_print
//teste mod config commit
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ifeira_testes/objetos/usuario.dart';
import 'package:ifeira_testes/pages/setUrl_page.dart';

/*void main() {
  fetch();
}*/

Future fetch() async {
  var url = Uri.parse('setUrl'); //puxar a 'setUrl' pra ca
  Map<String, String> teste = {
    "nome": "Caio Cesar",
    "email": "teste@teste",
    "senha": "12321"
  };
  Map<String, String> header = { 'Content-type': 'application/json',
    'Accept': 'application/json',
    "Authorization": "Some token"};
  var client = http.Client();
  var response = await client.post(url,body: jsonEncode(teste), headers: {'Content-type': 'application/json'});
  print(response.statusCode);
  if (response.statusCode == 200) {
    // If the server returns an OK response, then parse the JSON.
    return print(Welcome.fromJson(json.decode(response.body)));
  }
  }
