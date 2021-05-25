import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/data/providers/list_provider.dart';
import 'package:obra_limpa/app/global_widgets/card_widget.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';
import 'package:obra_limpa/app/services/dio_service.dart';
import 'package:obra_limpa/demostracao/model/lista_model.dart';

class ListingPage extends GetView<ListingController> {
  final ListingController controller =
      Get.put(ListingController(provider: ListProvider(apiClient: dioService)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            print(controller.demolist[index].cliente);
            return CardWidget(
              cliente: controller.demolist[index].cliente,
              endereco: controller.demolist[index].endereco,
              entregue: () {},
              produto: controller.demolist[index].produto,
              telefone: controller.demolist[index].telefone,
              tipo: controller.demolist[index].tipo,
              total: controller.demolist[index].total,
            );
          },
          itemCount: controller.demolist.length,
        ),
      ),
    );
  }
}
