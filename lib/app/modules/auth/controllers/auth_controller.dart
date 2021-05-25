import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/data/model/usuario_model.dart';
import 'package:obra_limpa/app/data/model_form/recuperar_senha_model_form.dart';
import 'package:obra_limpa/app/data/model_form/usuario_model_form.dart';
import 'package:obra_limpa/app/modules/auth/pages/sign_up.dart';
import 'package:obra_limpa/app/routes/app_pages.dart';

class AuthController extends GetxController {
  final _loading = false.obs;
  final _usuario = Rx<Usuario>();
  final _usuarioForm = UsuarioModelForm().obs;
  final _recoveryForm = RecoveryModelForm().obs;

  bool get loading => this._loading.value;
  Usuario get usuario => this._usuario.value;
  UsuarioModelForm get usuarioForm => this._usuarioForm.value;
  RecoveryModelForm get recoveryForm => this._recoveryForm.value;

  set loading(value) => this._loading.value = value;
  set usuario(value) => this._usuario.value = value;
  set usuarioForm(value) => this._usuarioForm.value = value;
  set recoveryForm(value) => this._recoveryForm.value = value;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailRecoceryController = TextEditingController();

  @override
  onInit() {
    emailController.addListener(() {
      usuarioForm.email = emailController.text;
    });
    passwordController.addListener(() {
      usuarioForm.password = passwordController.text;
    });

    emailRecoceryController.addListener(() {
      recoveryForm.email = emailRecoceryController.text;
    });

    super.onInit();
  }

  toSignUp() {
    emailController.clear();
    passwordController.clear();
    emailRecoceryController.clear();
    Get.to(SignUpPage());
  }

  signIn() async {
     loading = true;
    try {
      emailController.clear();
      passwordController.clear();
      Get.offAllNamed(Routes.HOME);
    } catch (error) {
      passwordController.clear();
    }
    loading = false;
  }
}
