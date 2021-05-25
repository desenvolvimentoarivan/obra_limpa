import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/global_widgets/button_widget.dart';
import 'package:obra_limpa/app/global_widgets/input_widget.dart';
import 'package:obra_limpa/app/modules/auth/controllers/auth_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class SignInPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.heightPercent(15),
              ),
              Image.asset(
                'assets/images/logo.png',
              ),
              SizedBox(
                height: SizeConfig.heightPercent(5),
              ),
              Text(
                "LOGIN",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: SizeConfig.heightPercent(3),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: InputWidget(
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  errorText: controller.usuarioForm.validateEmail(),
                  labelText: "Email",
                ),
              ),
              SizedBox(
                height: SizeConfig.vPadding(),
              ),
              SizedBox(
                height: SizeConfig.vPadding(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: InputWidget(
                  controller: controller.passwordController,
                  obscureText: true,
                  labelText: "Senha",
                  errorText: controller.usuarioForm.validatePassword(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  children: [
                    Checkbox(
                      value: controller.usuarioForm.lembrar,
                      onChanged: (value) =>
                          controller.usuarioForm.updateLembrar(value),
                    ),
                    Text('Lembrar de mim'),
                  ],
                ),
              ),
              ButtonWidget(
                buttonColor: CustomColors.secondaryColor,
                textStyle: TextStylish.h4.bold.white,
                text: "ENTRAR",
                onTap: controller.signIn,
                enabled: controller.usuarioForm.validSignIn,
                loading: controller.loading,
              ),
              SizedBox(
                height: SizeConfig.heightPercent(2),
              ),
              GestureDetector(
                onTap: controller.toSignUp,
                child: Container(
                  width: 150,
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    'Esqueceu a senha?',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
