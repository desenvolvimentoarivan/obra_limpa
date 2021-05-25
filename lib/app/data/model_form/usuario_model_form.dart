import 'package:get/get.dart';

class UsuarioModelForm extends GetxController {
  final _email = ''.obs;
  final _password = ''.obs;
  final _lembrar = true.obs;

  set email(value) => this._email.value = value;
  set password(value) => this._password.value = value;
  set lembrar(value) => this._lembrar.value = value;

  String get email => this._email.value;
  String get password => this._password.value;
  bool get lembrar => this._lembrar.value;

  updateLembrar(bool value) {
    lembrar = value;
  }

  String validateEmail() {
    if (email.isEmpty) {
      return 'Insira seu e-mail';
    }
    if (email.isEmail) {
      return null;
    }

    return 'E-mail inválido';
  }

  String validatePassword() {
    if (password.isEmpty) {
      return 'Insira sua senha';
    } else if (password.length < 6) {
      return 'Senha deve conter mais de 6 caracteres';
    }
    return null;
  }

  bool get validSignIn => validateEmail() == null && validatePassword() == null;

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "lembrar": lembrar == null ? null : lembrar,
      };
}
