import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_content/weather_app/home_page.dart';

class ProjectTablet extends StatelessWidget {
  const ProjectTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width-80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: _weatherApp()
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: _content(),
                    ),
                  ],
                ),

                SizedBox(height: 50,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      child: _weatherApp()
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: _content(),
                    ),
                  ],
                ),
              ],
            ),
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

Widget _content(){
        return  SelectableText(
          'Actualmente mi objetivo profesional es ser capaz de brindar y llevar a cabo soluciones informáticas que mejoren la sociedad actual, optimizando la vida de la gente y/o actualizar procesos considerados como “obsoletos”. Mis fortalezas son la perseverancia, positivismo, trabajo en equipo, creatividad y adaptabilidad. Me considero una persona de mente amplia, con disposición a desarrollar diversas tareas referentes a mi área profesional y desarrollarme por medio de la adquisición de experiencia para mejorar como profesional.',
          style: TextStyle(fontSize: 14, height: 1.4, ), 
          textAlign: TextAlign.justify,
          textDirection: TextDirection.ltr,

          );
}