import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obra_limpa/app/modules/historic/historic_page.dart';
import 'package:obra_limpa/app/modules/home/home_controller.dart';
import 'package:obra_limpa/app/modules/listing/listing_page.dart';
import 'package:obra_limpa/app/modules/listingRequests/listingRequests_page.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logoBarra.png',
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                accountName: Text("Arivan Júnior"),
                accountEmail: Text("arivan@yahoo.com"),
                currentAccountPicture: Image.asset(
                  'assets/images/logoBarra.png',
                ),
              ),
              ListTile(
                  leading: Icon(CupertinoIcons.person_alt_circle),
                  title: Text("Perfil"),
                  //subtitle: Text("Perfil do usuário..."),
                  //trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  leading: Icon(CupertinoIcons.home),
                  title: Text("Início"),
                  //subtitle: Text("meus favoritos..."),
                  //trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }),
              ListTile(
                  leading: Icon(CupertinoIcons.list_bullet),
                  title: Text("Lista"),
                  //subtitle: Text("meus favoritos..."),
                  //trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }),
              ListTile(
                  leading: Icon(CupertinoIcons.list_bullet_below_rectangle),
                  title: Text("Histórico"),
                  //subtitle: Text("meus favoritos..."),
                  //trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }),
              ListTile(
                  leading: Icon(CupertinoIcons.arrow_left_circle),
                  title: Text("Sair"),
                  //subtitle: Text("meus favoritos..."),
                  //trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }),
            ],
          ),
        ),
        body: Container(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              ListingPage(),
              ListingRequestPage(),
              HistoricPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          type: BottomNavigationBarType.fixed,
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          items: [
            _bottomNavigationBarItem(
              icon: CupertinoIcons.home,
              label: 'Início',
            ),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.list_bullet, label: 'Lista'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.list_bullet_below_rectangle,
                label: 'Histórico'),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
