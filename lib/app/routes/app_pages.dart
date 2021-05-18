import 'package:get/get.dart';
import 'package:obra_limpa/app/modules/auth/pages/sign_in.dart';
import 'package:obra_limpa/app/modules/home/home_binding.dart';
import 'package:obra_limpa/app/modules/home/home_page.dart';
import 'package:obra_limpa/app/modules/splash/pages/splash.dart';

import '../app_biding.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
    ),
    GetPage(
      name: Routes.SIGN_IN,
      page: () => SignInPage(),
      binding: AppBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
