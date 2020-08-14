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
            SizedBox(height: 60,),
            Center(
              child: Text(''),
            ),
          ],
        ),

        Container(
          width: MediaQuery.of(context).size.width/2.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Center(
                child: Image.asset('assets/images/developer-draw.png', 
                height: MediaQuery.of(context).size.height/2.5, 
                width: MediaQuery.of(context).size.width/2.5,
                ),
              ),
              Text(
                'Actualmente mi objetivo profesional es ser capaz de brindar y llevar a cabo soluciones informáticas que mejoren la sociedad actual, optimizando la vida de la gente y/o actualizar procesos considerados como “obsoletos”. Mis fortalezas son la perseverancia, positivismo, trabajo en equipo, creatividad y adaptabilidad. Me considero una persona de mente amplia, con disposición a desarrollar diversas tareas referentes a mi área profesional y desarrollarme por medio de la adquisición de experiencia para mejorar como profesional.',
                style: TextStyle(fontSize: 18, height: 1.7, ), 
                textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
        ),
      ]
    );
  }
}