import 'package:flutter/material.dart';
import 'package:portafolio_flutter/widgets/call_to_action/call_to_action.dart';
import 'package:portafolio_flutter/widgets/course_details/course_details.dart';

class HomeMobilePage extends StatelessWidget {
  const HomeMobilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CourseDetails(),
          SizedBox(height: 100,),
          CallToAction(),
        ],
      ),
    );
  }
}