import 'package:flutter/material.dart';
import 'package:obra_limpa/app/data/repository/api.dart';
import 'package:obra_limpa/app/services/dio_service.dart';
import 'package:obra_limpa/app/utils/exports.dart';
import 'package:obra_limpa/demostracao/model/lista_model.dart';

class ListProvider {
  /*ApiRepository<DemoLista> _api;
  // AuthController _authController = Get.find<AuthController>();

  ListProvider() {
    _api = ApiRepository<DemoLista>(
      creator: (json) => DemoLista.fromJson(json),
      toJsonCreator: (item, api) => item.toJson(api),
      dioService: dioService,
      singular: "pendente",
      plural: "pendentes",
    );
  }

  Future<List<DemoLista>> getAll() async {
    return await _api.fetchAll();
  }*/

//seu client http, pode ser http, http.Client, dio, apenas traga seus métodos para cá e funcionarão normalmente :D
  final Dio apiClient;
  ListProvider({@required this.apiClient});

  //um exemplo rápido, aqui estamos recuperando todos os posts disponibilizados pela api(100)
  Future<List<DemoLista>> getAll() async {
    var response = await dioService.get('pendentes');

    if (response.statusCode == 200) {
      // print(response);

      return response.data
          .map<DemoLista>((data) => DemoLista.fromJson(data))
          .toList();
    }
    return null;
  }
}
