import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_desktop.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_mobile.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_tablet.dart';
import 'package:portafolio_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:portafolio_flutter/widgets/centered_view/centered_view.dart';
import 'package:portafolio_flutter/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsPages extends StatefulWidget {
  ProjectsPages({Key key}) : super(key: key);

  @override
  _ProjectsPagesState createState() => _ProjectsPagesState();
}

class _ProjectsPagesState extends State<ProjectsPages> {
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
                desktop: ProjectsDesktop(),
                tablet:  ProjectTablet(),
                mobile:  ProjectMobile(),
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