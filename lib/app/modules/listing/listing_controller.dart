import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/data/providers/list_provider.dart';

import 'package:obra_limpa/demostracao/model/lista_model.dart';

class ListingController extends GetxController {
  final ListProvider provider;
  final _demolist = <DemoLista>[].obs;

  List<DemoLista> get demolist => this._demolist;
  set demolist(value) => this._demolist.assignAll(value);

  ListingController({@required this.provider}) : assert(provider != null);

  fetch() async {
    demolist = await provider.getAll();
  }

  @override
  onInit() async {
    await fetch();

    super.onInit();
  }
}
