import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';

class ListingPage extends GetView<ListingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        child: Center(
          child: Text('ListingPage'),
        ),
      ),
    );
  }
}
