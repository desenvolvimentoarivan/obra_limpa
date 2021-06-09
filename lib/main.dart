import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/utils/configs.dart';
import 'package:oktoast/oktoast.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init(constraints, orientation);
            return OKToast(
              position: ToastPosition.bottom,
              handleTouth: true,
              dismissOtherOnShow: true,
              child: GetMaterialApp(
                title: 'Obra Limpa',
                debugShowCheckedModeBanner: false,
                theme: appTheme,
                defaultTransition: Transition.fade,
                getPages: AppPages.pages,
                initialRoute: Routes.INITIAL,
              ),
            );
          },
        );
      },
    );
  }
}
