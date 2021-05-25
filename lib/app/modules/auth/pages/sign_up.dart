import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/global_widgets/button_widget.dart';
import 'package:obra_limpa/app/global_widgets/input_widget.dart';
import 'package:obra_limpa/app/modules/auth/controllers/auth_controller.dart';
import 'package:obra_limpa/app/utils/exports.dart';

class SignUpPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightPercent(5),
            ),
            Image.asset(
              'assets/images/logo.png',
            ),
            SizedBox(
              height: SizeConfig.heightPercent(5),
            ),
            Text(
              "Esquece a senha",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: SizeConfig.heightPercent(3),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: InputWidget(
                controller: controller.emailRecoceryController,
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                errorText: controller.recoveryForm.validateEmail(),
              ),
            ),
            SizedBox(
              height: SizeConfig.vPadding(),
            ),
            SizedBox(
              height: SizeConfig.vPadding(),
            ),
            ButtonWidget(
              buttonColor: CustomColors.secondaryColor,
              textStyle: TextStylish.h4.bold.white,
              text: "Enviar",
              enabled: controller.recoveryForm.validRecovery,
              loading: controller.loading,
              onTap: () => {print('ola')},
            ),
            SizedBox(
              height: SizeConfig.widthPercent(6),
            ),
          ],
        ),
      ),
    );
  }
}
