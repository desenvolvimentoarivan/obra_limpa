import 'package:get/get.dart';
import 'package:obra_limpa/app/modules/historic/historic_controller.dart';
import 'package:obra_limpa/app/modules/home/home_controller.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';
import 'package:obra_limpa/app/modules/listingRequests/listingRequests_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut<ListingController>(() => ListingController());
    Get.lazyPut<ListingRequestController>(() => ListingRequestController());
    Get.lazyPut<HistoricController>(() => HistoricController());
  }
}
