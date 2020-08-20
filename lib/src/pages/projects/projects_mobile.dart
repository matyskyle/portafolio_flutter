import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_content/weather_app/home_page.dart';

class ProjectMobile extends StatelessWidget {
  const ProjectMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _weatherApp(),
            SizedBox(height:30),
            _weatherApp(),
            SizedBox(height:30),
            _weatherApp(),
          ],
        ),
    );
  }
}

Widget _weatherApp(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Weather UI', style: TextStyle( fontSize: 14, fontWeight: FontWeight.w600)),
      SizedBox(height: 20,),
      WeatherApp(),
    ]
  );
}