import 'package:flutter/material.dart';
import 'package:obra_limpa/app/modules/home/home_page.dart';
import 'package:obra_limpa/app/routes/app_pages.dart';
import 'package:obra_limpa/app/utils/exports.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 2,
          navigateAfterSeconds: Routes.SIGN_IN,
          loaderColor: Colors.transparent,
        ),
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.logo),
                fit: BoxFit.none,
                scale: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
