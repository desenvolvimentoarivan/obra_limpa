import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/global_widgets/cardHistoric_widget.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';

class HistoricPage extends GetView<ListingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            var current = controller.demolistFinalizada[index];
            return CardHistoric(
              cliente: current.cliente,
              endereco: current.endereco,
              produto: current.produto,
              telefone: current.telefone,
              tipo: current.tipo,
              total: current.total,
            );
          },
          itemCount: controller.demolistFinalizada.length,
        ),
      ),
    );
  }
}
