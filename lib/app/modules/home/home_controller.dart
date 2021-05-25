import 'package:obra_limpa/app/routes/app_pages.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class HomeController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  void toSignInPage(BuildContext context) {
    Get.offAllNamed(Routes.SIGN_IN);
  }

  void toListingPage(BuildContext context) {
    changeTabIndex(0);
    Navigator.pop(context);
  }

  void toListRequestPage(BuildContext context) {
    changeTabIndex(1);
    Navigator.pop(context);
  }

  void toHistoricPage(BuildContext context) {
    changeTabIndex(2);
    Navigator.pop(context);
  }

  void toHomePage(BuildContext context) {
    Get.to(Routes.HOME);
    Navigator.pop(context);
  }
}
