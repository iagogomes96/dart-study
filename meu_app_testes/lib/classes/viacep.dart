import 'package:http/http.dart' as http;
import 'dart:convert';

class ViaCEP {
  Future<Map<dynamic, dynamic>> retornaCEP(String cep) async {
    var retorno =
        await http.get(Uri.parse('https://viacep.com.br/ws/$cep/json/'));
    var decodeResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;
    return decodeResponse;
  }
}
