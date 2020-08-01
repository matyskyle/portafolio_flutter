import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'MI INFORMACIÓN',
            style: TextStyle(fontWeight: FontWeight.w800, height: 0.9, fontSize: 80),
          ),
          SizedBox(height: 30,),
          Text(
          'Actualmente mi objetivo profesional es ser capaz de brindar y llevar a cabo soluciones informáticas que mejoren la sociedad actual, optimizando la vida de la gente y/o actualizar procesos considerados como “obsoletos”. Mis fortalezas son la perseverancia, positivismo, trabajo en equipo, creatividad y adaptabilidad. Me considero una persona de mente amplia, con disposición a desarrollar diversas tareas referentes a mi área profesional y desarrollarme por medio de la adquisición de experiencia para mejorar como profesional.',
          style: TextStyle(fontSize: 21, height: 1.7),),
        ],
      ),
    );
  }
}