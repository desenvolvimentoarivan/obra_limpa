import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/modules/listing/listing_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';
import 'package:obra_limpa/demostracao/model/lista_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ListingRequestController extends GetxController {
  final _listaRequest = <DemoLista>[].obs;

  List<DemoLista> get listRequest => this._listaRequest;
  set listaRequest(value) => this._listaRequest;

  //aqui erro
  //ListingController listController = Get.find<ListingController>();

  addListRequest(DemoLista demoLista) {
    _listaRequest.add(demoLista);
  }

  addHistoric(DemoLista demoLista) {
    //historictController.demolist.add(demoLista);
  }

  cancelListRequest(BuildContext context, DemoLista demoLista, int index) {
    AwesomeDialog(
      context: context,
      btnCancelColor: Colors.redAccent,
      dialogType: DialogType.INFO,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Pegar Entrega',
      desc: '',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        //listController.demolist.add(demoLista);
        listRequest.removeAt(index);
      },
    )..show();
  }

  openMap(String end) async {
    end = "https://www.google.com/maps/search/?api=1&query=$end";

    if (await canLaunch(end)) {
      await launch(end);
    } else {
      print('Could not launch $end');
    }
  }
}
