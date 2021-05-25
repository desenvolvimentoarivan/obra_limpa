import 'package:get/get.dart';

class RecoveryModelForm extends GetxController {
  final _email = ''.obs;

  set email(value) => this._email.value = value;

  String get email => this._email.value;

  String validateEmail() {
    if (email.isEmpty) {
      return 'Insira seu e-mail';
    }
    if (email.isEmail) {
      return null;
    }

    return 'E-mail inválido';
  }

  bool get validRecovery => validateEmail() == null;
}
