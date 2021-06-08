import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';
import 'package:obra_limpa/demostracao/model/lista_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ListingRequestController extends GetxController {
  cancelListRequest(BuildContext context, DemoLista demoLista, int index) {
    AwesomeDialog(
      context: context,
      btnCancelColor: Colors.redAccent,
      dialogType: DialogType.INFO,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Pegar Entrega',
      desc: '',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    )..show();
  }
}
