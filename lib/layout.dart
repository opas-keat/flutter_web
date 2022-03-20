import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/responsiveness.dart';
import 'package:flutter_web/widgets/large_screen.dart';
import 'package:flutter_web/widgets/side_menu.dart';
import 'package:flutter_web/widgets/top_nav.dart';

import 'widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeSceen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
