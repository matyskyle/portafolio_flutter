import 'package:flutter/material.dart';
import 'package:portafolio_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:portafolio_flutter/widgets/course_details/course_details.dart';

class HomeTabletPage extends StatelessWidget {
  const HomeTabletPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget> [
          CourseDetails(),
          Expanded(
            child: Center(
              child: CallToAction(),
            ),
          )
        ],
      );
  }
}