import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/data/providers/list_provider.dart';

import 'package:obra_limpa/demostracao/model/lista_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ListingController extends GetxController {
  final ListProvider provider;
  final _demolist = <DemoLista>[].obs;
  final _loading = false.obs;

  set loading(value) => _loading.value = value;
  bool get loading => _loading.value;

  List<DemoLista> get demolist => this._demolist;

  set demolist(List<DemoLista> value) => this._demolist.assignAll(value);

  List<DemoLista> get demolistPendente =>
      demolist.where((item) => item.status == 'p').toList();

  List<DemoLista> get demolistAberto =>
      demolist.where((item) => item.status == 'a').toList();

  List<DemoLista> get demolistFinalizada =>
      demolist.where((item) => item.status == 'f').toList();

  ListingController({@required this.provider}) : assert(provider != null);

  fetch() async {
    loading = true;
    demolist = await provider.getAll();
    loading = false;
  }

  takeDelivery(DemoLista demoLista) {
    demoLista.status = 'p';
    demolist = List.from(demolist.whereType<DemoLista>());
  }

  finishDelivery(DemoLista demoLista) {
    demoLista.status = 'f';
    demolist = List.from(demolist.whereType<DemoLista>());
  }

  cancelDelivery(DemoLista demoLista) {
    demoLista.status = 'a';
    demolist = List.from(demolist.whereType<DemoLista>());
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
        takeDelivery(demoLista);
      },
    )..show();
  }

  cancelarEntrega(BuildContext context, DemoLista demoLista, int index) {
    AwesomeDialog(
      context: context,
      btnCancelColor: Colors.redAccent,
      dialogType: DialogType.INFO,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Pegar Entrega',
      desc: '',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        cancelDelivery(demoLista);
      },
    )..show();
  }

  finalizarrEntrega(BuildContext context, DemoLista demoLista, int index) {
    AwesomeDialog(
      context: context,
      btnCancelColor: Colors.redAccent,
      dialogType: DialogType.INFO,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Pegar Entrega',
      desc: '',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        finishDelivery(demoLista);
      },
    )..show();
  }

  openMap(String end) async {
    end = "https://www.google.com/maps/search/?api=1&query=$end";

    if (await canLaunch(end)) {
      await launch(end);
    } else {
      print('Could not launch $end');
    }
  }
}
