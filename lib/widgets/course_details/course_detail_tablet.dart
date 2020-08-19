import 'package:flutter/material.dart';

class CourseDetailsTablet extends StatelessWidget {
  const CourseDetailsTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _title(context),
          SizedBox(height: 30,),
          _body(),
        ],
      ),
    );
  }
}

Widget _title(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        flex: 0,
        child: Text(
          'MI PORTAFOLIO\nPERSONAL',
          style: TextStyle(fontWeight: FontWeight.w900, height: 0.9,fontSize: MediaQuery.of(context).size.width/12),
          textAlign: TextAlign.center,
        ),
      ),
      Image.asset('assets/icons/flutter.png', 
      width: MediaQuery.of(context).size.width/6, 
      height: MediaQuery.of(context).size.width/6,),
    ],
  );
}

Widget _body(){
  return SelectableText(
          'Actualmente mi objetivo profesional es ser capaz de brindar y llevar a cabo soluciones informáticas que mejoren la sociedad actual, optimizando la vida de la gente y/o actualizar procesos considerados como “obsoletos”. Mis fortalezas son la perseverancia, positivismo, trabajo en equipo, creatividad y adaptabilidad. Me considero una persona de mente amplia, con disposición a desarrollar diversas tareas referentes a mi área profesional y desarrollarme por medio de la adquisición de experiencia para mejorar como profesional.',
          style: TextStyle(fontSize: 18, height: 1.7, ), 
          textAlign: TextAlign.justify,
          textDirection: TextDirection.ltr,
          );
}