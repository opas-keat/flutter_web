import 'package:flutter/material.dart';
import 'package:flutter_web/constants/style.dart';
import 'package:flutter_web/controllers/menu_controller.dart';
import 'package:flutter_web/controllers/navigation_controller.dart';
import 'package:flutter_web/pages/404/error_page.dart';
import 'package:flutter_web/pages/authntication/authentication.dart';
import 'package:flutter_web/pages/clients/clients.dart';
import 'package:flutter_web/pages/drivers/drivers.dart';
import 'package:flutter_web/pages/overview/overview.dart';
import 'package:flutter_web/routing/routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'layout.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authenticationPageRoute,
      unknownRoute: GetPage(
        name: "/not-found",
        page: () => const PageNotFound(),
        transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(
            name: authenticationPageRoute, page: () => AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
          scaffoldBackgroundColor: light,
          textTheme: GoogleFonts.muliTextTheme(
            Theme.of(context).textTheme,
          ).apply(
            bodyColor: Colors.black,
          ),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }),
          primaryColor: Colors.blue),
    );
  }
}
