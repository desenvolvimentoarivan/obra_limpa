import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/data/providers/list_provider.dart';
import 'package:obra_limpa/app/modules/listingRequests/listingRequests_controller.dart';

import 'package:obra_limpa/demostracao/model/lista_model.dart';

class ListingController extends GetxController {
  final ListProvider provider;
  final _demolist = <DemoLista>[].obs;

  List<DemoLista> get demolist => this._demolist;
  set demolist(value) => this._demolist.assignAll(value);

  ListingController({@required this.provider}) : assert(provider != null);

  ListingRequestController listRequestController =
      Get.find<ListingRequestController>();

  fetch() async {
    demolist = await provider.getAll();
  }

  addListRequest(DemoLista demoLista) {
    listRequestController.listRequest.add(demoLista);
  }

  @override
  onInit() async {
    await fetch();

    super.onInit();
  }

  pegarEntrega(BuildContext context, DemoLista demoLista, int index) {
    AwesomeDialog(
      context: context,
      btnCancelColor: Colors.redAccent,
      dialogType: DialogType.INFO,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Pegar Entrega',
      desc: '',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        addListRequest(demoLista);
        demolist.removeAt(index);
      },
    )..show();
  }
}
