import 'package:flutter/material.dart';
import 'package:portafolio_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:portafolio_flutter/widgets/centered_view/centered_view.dart';
import 'package:portafolio_flutter/widgets/course_details/course_details.dart';
import 'package:portafolio_flutter/widgets/navigation_bar/navigation_bar.dart';

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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  CourseDetails(),
                  CallToAction(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}