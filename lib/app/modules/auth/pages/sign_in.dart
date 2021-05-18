import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/global_widgets/button_widget.dart';
import 'package:obra_limpa/app/global_widgets/input_widget.dart';
import 'package:obra_limpa/app/modules/auth/controllers/auth_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class SignInPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                keyboardType: TextInputType.emailAddress,
                labelText: "Email ou Usuário",
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
                obscureText: true,
                labelText: "Senha",
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (bool value) {},
                  ),
                  Text('Lembrar de mim'),
                ],
              ),
            ),
            ButtonWidget(
              buttonColor: CustomColors.secondaryColor,
              textStyle: TextStylish.h4.bold.white,
              text: "ENTRAR",
              onTap: () => {print('ola')},
            ),
            SizedBox(
              height: SizeConfig.widthPercent(6),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Esqueceu a senha?',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
