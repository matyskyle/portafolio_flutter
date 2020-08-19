import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/home_pages.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio',

      initialRoute: 'first',
      routes: {
        'first'    : (BuildContext context) => HomePage(),
        'projects' : (BuildContext context) => ProjectsPages(),
      },

      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark()
      ),
      themeMode: ThemeMode.dark,
    );
  }
}


