import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/global_widgets/card_widget.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';

class ListingPage extends GetView<ListingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Obx(() {
        print(controller.demolistAberto.length);
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            var current = controller.demolistAberto[index];
            return CardWidget(
              cliente: current.cliente,
              endereco: current.endereco,
              entregue: () {
                controller.pegarEntrega(context, current, index);
              },
              produto: current.produto,
              telefone: current.telefone,
              tipo: current.tipo,
              total: current.total,
            );
          },
          itemCount: controller.demolistAberto.length,
        );
      }),
    );
  }
}
