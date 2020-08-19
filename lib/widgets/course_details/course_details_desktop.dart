import 'package:flutter/material.dart';

class CourseDetailsDesktop extends StatelessWidget {
  const CourseDetailsDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Text(
                'MI PORTAFOLIO\nPERSONAL',
                style: TextStyle(fontWeight: FontWeight.w900, height: 0.9, fontSize: MediaQuery.of(context).size.width/28),
                textAlign: TextAlign.right,
              ),
              Image.asset('assets/icons/flutter.png', 
              width: MediaQuery.of(context).size.width/12, 
              height: MediaQuery.of(context).size.width/12,),
            ],
          ),
          SizedBox(height: 30,),
          SelectableText(
          'Actualmente mi objetivo profesional es ser capaz de brindar y llevar a cabo soluciones informáticas que mejoren la sociedad actual, optimizando la vida de la gente y/o actualizar procesos considerados como “obsoletos”. Mis fortalezas son la perseverancia, positivismo, trabajo en equipo, creatividad y adaptabilidad. Me considero una persona de mente amplia, con disposición a desarrollar diversas tareas referentes a mi área profesional y desarrollarme por medio de la adquisición de experiencia para mejorar como profesional.',
          style: TextStyle(fontSize: 17, height: 1.7, ), 
          textAlign: TextAlign.justify,
          textDirection: TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}