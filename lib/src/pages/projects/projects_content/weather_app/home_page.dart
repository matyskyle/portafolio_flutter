import 'package:flutter/material.dart';
import 'package:portafolio_flutter/src/pages/projects/projects_content/weather_app/model/weather.dart';

class WeatherApp extends StatefulWidget {
  static const _kFontFam = 'MyFlutterApp';
  static const _kFontPkg = null;

  static const IconData drizzle = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData sun = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData cloud_sun = IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData sunset = IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  String temp = '26';

  String weather = "S\nU\nN\nN\nY";

  Color color = Colors.black;

  String background = "assets/images/bg1.png";

  String gif = "assets/images/sunny.gif";

  List<bool> isSelected = [true, false, false, false, false, false, false];

  final List<Weather> weatherList = [

    Weather(
      id: 1,
      day: "MON",
      temp: "26",
      weather: "S\nU\nN\nN\nY",
      imgDay: "assets/images/sunset.png",
      imgNight: "assets/images/sunset.png",
    ),
    Weather(
      id: 2,
      day: "TUE",
      temp: "14",
      weather: "R\nA\nI\nN\nY",
      imgDay: "assets/images/rain.png",
      imgNight: "assets/images/rain.png",
    ),
    Weather(
      id: 3,
      day: "WED",
      temp: "26",
      weather: "C\nL\nO\nU\nD\nY",
      imgDay: "assets/images/sun.png",
      imgNight: "assets/images/sun.png",
    ),
    Weather(
      id: 4,
      day: "THU",
      temp: "28",
      weather: "C\nL\nE\nA\nR",
      imgDay: "assets/images/cloudy.png",
      imgNight: "assets/images/cloudy.png",
    ),
    Weather(
      id: 5,
      day: "FRI",
      temp: "26",
      weather: "S\nU\nN\nN\nY",
      imgDay: "assets/images/sunset.png",
      imgNight: "assets/images/sunset.png",
    ),
    Weather(
      id: 6,
      day: "SAT",
      temp: "24",
      weather: "R\nA\nI\nN\nY",
      imgDay: "assets/images/rain.png",
      imgNight: "assets/images/rain.png",
    ),
    Weather(
      id: 7,
      day: "SUN",
      temp: "26",
      weather: "C\nL\nO\nU\nD\nY",
      imgDay: "assets/images/sun.png",
      imgNight: "assets/images/sun.png",
    ),
  ];

  void daySelected(int index){
    setState(() {
          for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = true;
              temp = weatherList[buttonIndex].temp;
              weather = weatherList[buttonIndex].weather;
    
              if(weatherList[buttonIndex].id == 5){
                color = Colors.white;
                gif = "assets/images/night.gif";
                background = "assets/images/bg5.png";
              }
              else{
                color = Colors.black;
    
                if(weatherList[buttonIndex].id == 2 || weatherList[buttonIndex].id == 6){
                  gif = "assets/images/rainy.gif";
                }
                else{
                  gif = "assets/images/sunny.gif";
                }
                background = "assets/images/bg1.png";
              }
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
      }

      @override
      Widget build(BuildContext context) {
        return Container( 
            width: 300,
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(background), fit: BoxFit.cover),
            ),
            
            child: SafeArea(
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _temperatureNow(), //temperatura actual
    
                        Container(
                          height: MediaQuery.of(context).size.height/6,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Image.asset(gif),
                        ),
    
                        _daysInfo(), //informacion de la temperatura durante la semana
                      ],
                  ),
            ),
          );
      }

      Widget _temperatureNow() {
        final temperatureText = Container(
                                  child: Text(
                                  temp, style: TextStyle(
                                  fontSize: 100,
                                  fontFamily: "Oxygen",
                                  color: color,
                                  ),),
                                );
        
        final simbols = Container(
                          height: 80,
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "o",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: color,
                              ),
                            ),
    
                            Text("C", style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "IBM",
                              color: color,
                            ),
                          
                            ),
                          ],
                        ),
                      );
    
        //Contenedor para la temperatura
        return Container(
          height: 130,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: [
    
                    temperatureText, //numero de la temperatura
    
                    SizedBox(
                      width: 5,
                    ),
    
                    simbols, //simbolos de la temperatura
                    
                    SizedBox(
                      width: 20,
                    ),
    
                    _weatherType(),
                  ],
                ),
              )
            ],
          ),
        );
      }

      Widget _daysInfo() {
        final cityName = Text(
                          "TOKYO", style: TextStyle(
                            fontSize: 25,
                            letterSpacing: 2,
                            fontFamily: "Poopins",
                            color: color,
                            fontWeight: FontWeight.w300,
                            ),
                          );
    
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              cityName, //nombre de la ciudad consultada
    
              SizedBox(
                height: 10,
              ),
    
              weatherDaysIcons(), // iconos del clima de toda la semana
    
              ConstrainedBox(
                //nombre del dia
                constraints: BoxConstraints(
                  maxHeight: 20,
                  maxWidth: 285,
                ),
                child: ListView.builder(
                  itemBuilder: (ctx, i) => Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.0, vertical: 3
                  ),
                  child: Text(
                    weatherList[i].day,
                    style: TextStyle(
                      fontFamily: "Poppins", color: color, fontSize: 11
                    ),
                  ),
                ),
    
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        );
      }

      Widget _weatherType(){
        return SafeArea(
            child: Text(
              weather, style: TextStyle(
                fontSize: 17, fontFamily: "IBM", color: color
              )
            ),
          );
      }

      Widget weatherDaysIcons(){
        return ToggleButtons(
              constraints: BoxConstraints(minHeight: 28, minWidth: 40),
              borderRadius: BorderRadius.circular(20),
              fillColor: Colors.brown.withOpacity(0.4),
              children: [
                Icon(
                  WeatherApp.sunset,
                  color: color,
                  size: 25
                ),
                Icon(
                  WeatherApp.drizzle,
                  color: color,
                  size: 25
                ),
                Icon(
                  WeatherApp.cloud_sun,
                  color: color,
                  size: 25
                ),
                Icon(
                  WeatherApp.sun,
                  color: color,
                  size: 25
                ),
                Icon(
                  WeatherApp.sunset,
                  color: color,
                  size: 25
                ),
                Icon(
                  WeatherApp.drizzle,
                  color: color
                ),
                Icon(
                  WeatherApp.cloud_sun,
                  color: color
                ),
              ],
    
              onPressed: (int index){
                daySelected(index);
              },
              isSelected: isSelected,
            );
      }
}