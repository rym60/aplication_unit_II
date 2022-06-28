import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/alert_screen.dart';

import 'animation_screen.dart';
import 'card_screen.dart';
import 'com_screen.dart';
import 'listview_screens.dart';
import 'listview_screens_2.dart';
import 'menu_options.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
      MenuOptions(
      route: 'alert', 
      icon: Icons.add_alarm_outlined, 
      name: 'Alerts Screen', 
      screen: const AlertScreen()),

    MenuOptions(
      route: 'animation', 
      icon: Icons.ads_click_outlined, 
      name: 'Animation', 
      screen: const AnimationScreen()),
    MenuOptions(
      route: 'card', 
      icon: Icons.credit_card, 
      name: 'Credit Card', 
      screen: const CardScreen()),
    MenuOptions(
      route: 'listview', 
      icon: Icons.list_alt_outlined,
      name: 'List Type 1', 
      screen: const ListViewScreen()),
    MenuOptions(
      route: 'listview2', 
      icon: Icons.list_outlined,
      name: 'List Type 2', 
      screen: const ListView2Screen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home':(BuildContext context) => HomeScreen()});

    for(final option in menuOptions){
      appRoutes.addAll({
        option.route :(BuildContext context) => option.screen
      });
    }

    return appRoutes;

  }

  static Route<dynamic> onGeneratedRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen()
      );
  }
}