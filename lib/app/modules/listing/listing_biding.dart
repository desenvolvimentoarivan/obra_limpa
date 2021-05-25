import 'package:get/get.dart';
import 'package:obra_limpa/app/data/providers/list_provider.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';
import 'package:obra_limpa/app/services/dio_service.dart';

class ListingBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListingController>(
      () => ListingController(
        provider: ListProvider(apiClient: dioService),
      ),
    );
  }
}
