import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/contact_pages.dart';
import 'package:portafolio_flutter/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTablet extends StatelessWidget {
  const NavigationBarTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 80,
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),

          _contenido(context,'About','Projects','Contact Me')
        ],
       ),
    );
  }
}

Widget _contenido(BuildContext context, String title1, String title2, String title3) {
    final double textSize = 18;

    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget> [
      InkWell(
        onTap: () => Navigator.pushNamed(context, 'first'),
        child: Text(title1, style: TextStyle(fontWeight: FontWeight.w400, fontSize: textSize)),
      ),

      SizedBox(width: 30,),

      InkWell(
        onTap: () => Navigator.pushNamed(context, 'projects'),
        child: Text(title2, style: TextStyle(fontWeight: FontWeight.w400, fontSize: textSize)),
      ),

      SizedBox(width: 30,),

      InkWell(
        onTap: () => ContactPages(context),
        child: Text(title3, style: TextStyle(fontWeight: FontWeight.w400, fontSize: textSize)),
      ),
    ],
  );
  }
