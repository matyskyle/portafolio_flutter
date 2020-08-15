import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/home_desktop_pages.dart';
import 'package:portafolio_flutter/src/pages/home_mobile_page.dart';
import 'package:portafolio_flutter/src/pages/home_tablet_page.dart';
import 'package:portafolio_flutter/widgets/call_to_action/call_to_action.dart';
//import 'package:portafolio_flutter/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:portafolio_flutter/widgets/centered_view/centered_view.dart';
import 'package:portafolio_flutter/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            SizedBox(height: 3,),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeMobilePage(),
                tablet: HomeTabletPage(),
                desktop: HomeDesktopPage(),
              ),
            ),
            SizedBox(height: 3,),
            CallToAction(),
          ],
        ),
      ),
    );
  }
}