import 'package:flutter/material.dart';
import 'package:portafolio_flutter/widgets/navigation_bar/navbar_item.dart';
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

          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('About'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Proyects'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Contact'),
            ],
          )
        ],
       ),
    );
  }
}