import 'package:flutter/material.dart';
import 'package:portafolio_flutter/widgets/course_details/course_details.dart';

class HomeDesktopPage extends StatelessWidget {
  const HomeDesktopPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            CourseDetails(),
          ],
        ),

        SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width/2.2,
            child: Center(
              child: Image.asset('assets/images/technological-draw.png', 
              height: MediaQuery.of(context).size.height/1.2, 
              width: MediaQuery.of(context).size.width/1.2,
              ),
            ),
          ),
        ),
      ]
    );
  }
}