import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/alert_screen.dart';
import 'package:flutter_application_3/screens/animation_screen.dart';
import 'package:flutter_application_3/screens/app_routes.dart';
import 'package:flutter_application_3/screens/app_theme.dart';
import 'package:flutter_application_3/screens/card_screen.dart';
import 'package:flutter_application_3/screens/com_screen.dart';
import 'package:flutter_application_3/screens/listview_screens_2.dart';
import 'package:flutter_application_3/screens/page_1.dart';
import 'package:flutter_application_3/screens/page_2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const Color primary = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGeneratedRoute,
    theme: AppThemes.pinkDarkTheme,
        );
  }
}
