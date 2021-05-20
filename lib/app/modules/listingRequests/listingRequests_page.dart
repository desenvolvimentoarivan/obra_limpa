import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/modules/listingRequests/listingRequests_controller.dart';

class ListingRequestPage extends GetView<ListingRequestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        child: Center(
          child: Text('ListingRequestPage'),
        ),
      ),
    );
  }
}
