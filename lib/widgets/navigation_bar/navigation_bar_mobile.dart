import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/contact_pages.dart';
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
          _webContactIcons(context),

        ],
      ),
    );
  }
}

Widget _webContactIcons(BuildContext context){
  final double iconSize = 20;
  final double textSize = 8;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget> [
      InkWell(
        onTap: () => Navigator.pushNamed(context, 'first'),
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
        onTap: () => Navigator.pushNamed(context, 'projects'),
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
        onTap: () => ContactPages(context),
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