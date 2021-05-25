import 'package:obra_limpa/app/data/repository/api.dart';
import 'package:obra_limpa/app/services/dio_service.dart';
import 'package:obra_limpa/demostracao/model/lista_model.dart';

class ListProvider {
  ApiRepository<DemoLista> _api;
  // AuthController _authController = Get.find<AuthController>();

  ListProvider() {
    _api = ApiRepository<DemoLista>(
      creator: (json) => DemoLista.fromJson(json),
      toJsonCreator: (item, api) => item.toJson(api),
      dioService: dioService,
      singular: "cidade",
      plural: "cidades",
    );
  }

  Future<List<DemoLista>> getAll() async {
    return await _api.fetchAll();
  }
}
