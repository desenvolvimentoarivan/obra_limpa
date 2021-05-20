import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/modules/historic/historic_controller.dart';

class HistoricPage extends GetView<HistoricController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        child: Center(
          child: Text('HistoricPage'),
        ),
      ),
    );
  }
}
