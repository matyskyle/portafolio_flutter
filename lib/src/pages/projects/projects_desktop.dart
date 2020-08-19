import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_content/weather_app/home_page.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weather UI', style: TextStyle( fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(height: 20,),
              Container(
                width: 300,
                height: 550,
                child: HomePage(),
              ),
            ],
          ),

          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weather UI', style: TextStyle( fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(height: 20,),
              Container(
                width: 300,
                height: 550,
                child: HomePage(),
              ),
            ],
          ),

          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weather UI', style: TextStyle( fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(height: 20,),
              Container(
                width: 300,
                height: 550,
                child: HomePage(),
              ),
            ],
          ),

          // SafeArea(
          //   child: Container(
          //     width: MediaQuery.of(context).size.width/2.3,
          //     child: Center(
          //       child: Image.asset('assets/images/technological-draw.png', 
          //       height: MediaQuery.of(context).size.height/1.2,
          //       width: MediaQuery.of(context).size.width/1.2,
          //       ),
          //     ),
          //   ),
          // ),
        ]
      ),
    );
  }
}