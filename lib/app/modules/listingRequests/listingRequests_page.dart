import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/global_widgets/card_widget2.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';

class ListingRequestPage extends GetView<ListingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (BuildContext _, int index) {
            var current = controller.demolistPendente[index];
            return CardWidget2(
              cliente: current.cliente,
              endereco: current.endereco,
              entregue: () {
                controller.finalizarrEntrega(_, current, index);
              },
              cancelado: () {
                controller.cancelarEntrega(_, current, index);
              },
              mapa: () {
                controller.openMap(current.endereco);
              },
              produto: current.produto,
              telefone: current.telefone,
              tipo: current.tipo,
              total: current.total,
            );
          },
          itemCount: controller.demolistPendente.length,
        ),
      ),
    );
  }
}
