import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_content/weather_app/home_page.dart';

class ProjectTablet extends StatelessWidget {
  const ProjectTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-80,
      child: SingleChildScrollView(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _weatherApp(),

                  _weatherApp(),
                ],
              ),

              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _weatherApp(),

                  _weatherApp(),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}

Widget _weatherApp(){

  return Column(
    children: [
      Text('Weather UI', style: TextStyle( fontSize: 14, fontWeight: FontWeight.w600)),
      SizedBox(height: 20,),
      Container(
        width: 300,
        height: 550,
        child: HomePage(),
      ),
    ],
  );
}