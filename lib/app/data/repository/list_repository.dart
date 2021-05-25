import 'package:flutter/material.dart';
import 'package:obra_limpa/app/data/providers/list_provider.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class ListRepository {
  /*final ListProvider apiClient;

  ListRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }*/

  final ListProvider apiClient;

  ListRepository({@required this.apiClient}) : assert(apiClient != null);

  getAll() {
    return apiClient.getAll();
  }
}
