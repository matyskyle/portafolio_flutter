import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:portafolio_flutter/constants/app_colors.dart';

class CallToActionTablet extends StatelessWidget {
  const CallToActionTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child:  _webContactIcons(),
      decoration: BoxDecoration(color: barColor,
      borderRadius: BorderRadius.circular(5)),
    );
  }
}

Widget _webContactIcons(){
  final double iconSize = 30;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget> [
      InkWell(
        onTap: () => html.window.open('https://www.linkedin.com/in/mati%C3%A1s-cabrera-herrera-277786170/','Linkedin'),
        child: Image.asset('assets/icons/linkedin.png', height: iconSize, width: iconSize,),
      ),

      SizedBox(width: 50,),

      InkWell(
        onTap: () => html.window.open('https://github.com/matyskyle','Github'),
        child: Image.asset('assets/icons/github.png', height: iconSize, width: iconSize,),
      ),

      SizedBox(width: 50,),

      InkWell(
        onTap: () => html.window.open('https://stackoverflow.com/story/matyskyle','Stackoverflow'),
        child: Image.asset('assets/icons/stackoverflow.png', height: iconSize, width: iconSize,),
      ),
    ],
  );
}