import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/global_widgets/card_widget.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';

class ListingPage extends GetView<ListingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: CardWidget(
        cliente: "arivan",
        produto: "tijolo",
        cancelado: () {},
        endereco: "Rua sei la",
        entregue: () {},
        telefone: "3142-42547",
        tipo: "Entrega",
        total: "20,00 (Dinheiro)",
      ),
    );
  }
}
