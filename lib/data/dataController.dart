import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mercado_aberto/model/cepModel.dart';

import 'api.dart';

class DataController {
  final api = API();

  Future<cepModel?> getCep(String cep) async {
    try {
      final response = await api.get("https://viacep.com.br/ws/$cep/json/");
      if (response?.statusCode == 200) {
        return cepModel.fromJson(json.decode(json.encode(response?.data)));
      }
    } catch (e) {
      rethrow;
    }
  }
}
