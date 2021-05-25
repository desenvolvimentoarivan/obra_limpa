import 'package:obra_limpa/app/utils/exports.dart';

typedef S ItemCreator<S>(dynamic);

typedef Map<String, dynamic> ItemToJsonCreator<S>(dynamic i, dynamic b);

class ApiRepository<T> {
  Dio dioService;
  ItemCreator<T> creator;
  ItemToJsonCreator<T> toJsonCreator;
  String plural;
  var jsonMap;
  String singular;

  ApiRepository({
    @required this.creator,
    @required this.toJsonCreator,
    @required this.plural,
    @required this.singular,
    @required this.dioService,
  });

  Future<bool> destroy(String id) async {
    var response = await dioService.delete("api/$plural/$id");
    if (response.statusCode == 204) {
      return true;
    }
    return false;
  }

  Future<T> create(data) async {
    var formData = FormData.fromMap({singular: data});
    var response = await dioService.post("api/$plural", data: formData);
    if (response.statusCode == 201) {
      return creator(response.data);
    }
    return null;
  }

  Future<bool> save(t) async {
    var clienteJson = toJsonCreator(t, true);
    var response = await dioService
        .put("api/$plural/${clienteJson['id']}", data: {singular: clienteJson});
    if (response.statusCode == 200) {
      return true;
    }
    return null;
  }

  Future<List<T>> fetchAll({params, additionalRoute}) async {
    var response = await dioService.get(
        "api/$plural${GetUtils.isNullOrBlank(additionalRoute) ? '' : additionalRoute}",
        queryParameters: params);
    if (response.statusCode == 200) {
      return response.data.map<T>((data) => creator(data)).toList();
    }
    return null;
  }
}
