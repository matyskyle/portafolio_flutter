import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Image.asset('assets/icons/marioblock.gif'),
          Container(
            child: Text('MATIAS\nPORTAFOLIO', 
                   style: TextStyle(fontWeight: FontWeight.w300, height: 0.9, fontSize: 15),),
          )
        ],
      ),
    );
  }
}