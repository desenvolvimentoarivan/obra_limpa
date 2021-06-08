import 'package:get/get.dart';
import 'package:obra_limpa/app/data/providers/list_provider.dart';

import 'package:obra_limpa/app/modules/home/home_controller.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';
import 'package:obra_limpa/app/modules/listingRequests/listingRequests_controller.dart';
import 'package:obra_limpa/app/services/dio_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(
        () => ListingController(provider: ListProvider(apiClient: dioService)));
    Get.lazyPut(() => ListingRequestController());
  }
}
