import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:imagebutton/imagebutton.dart';

import 'dart:html' as html;

class CallToAction extends StatelessWidget {
  const CallToAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child:  _webContactIcons(),
      decoration: BoxDecoration(color: Color.fromARGB(255, 31, 229, 146),
      borderRadius: BorderRadius.circular(5)),
    );
  }
}

Widget _webContactIcons(){
  final double iconSize = 50;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget> [
/*       ImageButton(
        children: [],
        width: iconSize,
        height: iconSize,
        pressedImage: Image.asset("assets/icons/linkedin.png"),
        unpressedImage: Image.asset("assets/icons/linkedin.png"),
        onTap: (){

        },
      ), */
      InkWell(
        onTap: () => html.window.open('https://www.linkedin.com/in/mati%C3%A1s-cabrera-herrera-277786170/','Linkedin'),
        child: Image.asset('assets/icons/linkedin.png', height: iconSize, width: iconSize,),
      ),

      SizedBox(width: 20,),

      InkWell(
        onTap: () => html.window.open('https://github.com/matyskyle','Github'),
        child: Image.asset('assets/icons/github.png', height: iconSize, width: iconSize,),
      ),

      SizedBox(width: 20,),

      InkWell(
        onTap: () => html.window.open('https://stackoverflow.com/story/matyskyle','Stackoverflow'),
        child: Image.asset('assets/icons/stackoverflow.png', height: iconSize, width: iconSize,),
      ),

      SizedBox(width: 20,),

      InkWell(
        //onTap: () => html.window.open('https://www.linkedin.com/in/mati%C3%A1s-cabrera-herrera-277786170/'),
        child: Image.asset('assets/icons/mail.png', height: iconSize, width: iconSize,),
      ),
    ],
  );
}