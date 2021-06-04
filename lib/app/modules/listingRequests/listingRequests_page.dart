import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/data/providers/list_provider.dart';
import 'package:obra_limpa/app/global_widgets/card_widget2.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';
import 'package:obra_limpa/app/modules/listingRequests/listingRequests_controller.dart';
import 'package:obra_limpa/app/services/dio_service.dart';

class ListingRequestPage extends GetView<ListingRequestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Obx(
        () => ListView.builder(
          itemBuilder: (BuildContext _, int index) {
            return CardWidget2(
              cliente: controller.listRequest[index].cliente,
              endereco: controller.listRequest[index].endereco,
              entregue: () {},
              cancelado: () {
                controller.cancelListRequest(
                    _, controller.listRequest[index], index);
              },
              mapa: () {
                controller.openMap(controller.listRequest[index].endereco);
              },
              produto: controller.listRequest[index].produto,
              telefone: controller.listRequest[index].telefone,
              tipo: controller.listRequest[index].tipo,
              total: controller.listRequest[index].total,
            );
          },
          itemCount: controller.listRequest.length,
        ),
        //Text(''),
      ),
    );
  }
}
