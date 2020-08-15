import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:portafolio_flutter/widgets/navigation_bar/navbar_logo_mobile.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        )
      ),
      height: 45,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogoMobile(),
          _webContactIcons(),

        ],
      ),
    );
  }
}

Widget _webContactIcons(){
  final double iconSize = 20;
  final double textSize = 8;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget> [
      InkWell(
        onTap: () => html.window.open('https://www.linkedin.com/in/mati%C3%A1s-cabrera-herrera-277786170/','Linkedin'),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person, size: iconSize,),
              Text('About', style: TextStyle(fontWeight: FontWeight.w800, fontSize: textSize)),
            ],
          )
        ),
      ),

      SizedBox(width: 10,),

      InkWell(
        onTap: () => html.window.open('https://github.com/matyskyle','Github'),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.library_books, size: iconSize,),
              Text('Projects', style: TextStyle(fontWeight: FontWeight.w800, fontSize: textSize)),
            ],
          )
        ),
      ),

      SizedBox(width: 10,),

      InkWell(
        onTap: () => html.window.open('https://stackoverflow.com/story/matyskyle','Stackoverflow'),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.mail, size: iconSize,),
              Text('Contact', style: TextStyle(fontWeight: FontWeight.w800, fontSize: textSize)),
            ],
          )
        ),
      ),
    ],
  );
}