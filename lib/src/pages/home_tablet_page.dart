import 'package:flutter/material.dart';
import 'package:portafolio_flutter/widgets/course_details/course_details.dart';

class HomeTabletPage extends StatelessWidget {
  const HomeTabletPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CourseDetails(),
          Center(
            child: Image.asset('assets/images/developer-draw.png', 
            height: 500, 
            width:  500,
            ),
          ),
          CourseDetails(),
          Center(
            child: Image.asset('assets/images/developer-draw.png', 
            height: 500, 
            width:  500,
            ),
          ),
          CourseDetails(),
          Center(
            child: Image.asset('assets/images/developer-draw.png', 
            height: 500, 
            width:  500,
            ),
          ),
        ],
      ),
    );
  }
}