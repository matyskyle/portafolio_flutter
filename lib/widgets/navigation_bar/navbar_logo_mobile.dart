import 'package:flutter/material.dart';

class NavBarLogoMobile extends StatelessWidget {
  const NavBarLogoMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  final double imageSize = 40;
    return SizedBox(
      child: Row(
        children: [
          Image.asset('assets/icons/marioblock.gif', height: imageSize, width: imageSize,),
          Container(
            child: Text('MATIAS\nPORTAFOLIO', 
                   style: TextStyle(fontWeight: FontWeight.w600, height: 0.9, fontSize: 13),),
          )
        ],
      ),
    );
  }
}