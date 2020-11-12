import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:flutter/services.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather_app/screens/loading_screen.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weather_app/Variables.dart';
import 'package:geolocator/geolocator.dart';
import 'main_body.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:weather_app/location.dart';
import 'package:weather_app/service/networking.dart';
import 'package:weather_app/date.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class HomePage extends StatefulWidget {

  HomePage({this.locationWeather});

  final locationWeather;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int weatherConditionID;
  String weatherCondition;
  String place;
  var temperature;
  var moisture;
  var wind;
  IconData icon;
  Color backGroundColor;
  Color iconColor;
  String monthName;
  int dayNo;
  String weekdayName;
  var iconSize;
  var iconPositionedTop;
  var iconPositionedBottom;
  var iconPositionedLeft;
  var iconPositionedRight;
  var textPositionedTop;
  var textPositionedBottom;
  var textPositionedLeft;
  var textPositionedRight;
  AlignmentDirectional iconAlignment;
  double lineWidth;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {

    weatherConditionID = weatherData['weather'][0]['id'];

    if(200 <= weatherConditionID && weatherConditionID <= 232) {
      weatherCondition = 'Stormy';
      icon = RpgAwesome.lightning_storm;
      backGroundColor = stormyGreen;
      iconColor = stormyIcon;
      iconSize = allHeight*0.4;
      iconPositionedTop = -allWidth*0.02;
      iconPositionedBottom = null;
      iconPositionedLeft = -allWidth*0.15;
      iconPositionedRight = null;
      textPositionedTop = null;
      textPositionedBottom = allHeight*0.03;
      textPositionedLeft = null;
      textPositionedRight = allHeight*0.01;
      iconAlignment = null;
      lineWidth = 0.41;
    }else if(300 <= weatherConditionID && weatherConditionID <= 321) {
      weatherCondition = 'Drizzle';
      icon = Meteocons.drizzle_inv;
      backGroundColor = drizzlePurple;
      iconColor = drizzleIcon;
      iconSize = allHeight*0.4;
      iconPositionedTop = -allHeight*0.02;
      iconPositionedBottom = null;
      iconPositionedLeft = -allHeight*0.08;
      iconPositionedRight = null;
      textPositionedTop = null;
      textPositionedBottom = allHeight*0.03;
      textPositionedLeft = null;
      textPositionedRight = allHeight*0.01;
      iconAlignment = null;
      lineWidth = 0.41;
    }else if(500 <= weatherConditionID && weatherConditionID <= 531) {
      weatherCondition = 'Rainy';
      icon = FontAwesome5.cloud_rain;
      backGroundColor = rainyBlue;
      iconColor = rainyIcon;
      iconSize = allHeight*0.35;
      iconPositionedTop = null;
      iconPositionedBottom = null;
      iconPositionedLeft = -allHeight*0.06;
      iconPositionedRight = null;
      textPositionedTop = null;
      textPositionedBottom = allHeight*0.04;
      textPositionedLeft = null;
      textPositionedRight = allWidth*0.06;
      iconAlignment = null;
      lineWidth = 0.41;
    }else if(600 <= weatherConditionID && weatherConditionID <= 622) {
      weatherCondition = 'Snowy';
      icon = FontAwesomeIcons.solidSnowflake;
      backGroundColor = snowyBlack;
      iconColor = snowyIcon;
      iconSize = allHeight*0.35;
      iconPositionedTop = null;
      iconPositionedBottom = null;
      iconPositionedLeft = null;
      iconPositionedRight = null;
      textPositionedTop = null;
      textPositionedBottom = allHeight*0.02;
      textPositionedLeft = allWidth*0.1;
      textPositionedRight = null;
      iconAlignment = AlignmentDirectional.bottomCenter;
      lineWidth = 0.41;
    }else if(701 <= weatherConditionID && weatherConditionID <= 781) {
      weatherCondition = 'Foggy';
      icon = Meteocons.fog_cloud;
      backGroundColor = foggyTan;
      iconColor = foggyIcon;
      iconSize = allHeight*0.42;
      iconPositionedTop = -allHeight*0.02;
      iconPositionedBottom = null;
      iconPositionedLeft = -allHeight*0.1;
      iconPositionedRight = null;
      textPositionedTop = null;
      textPositionedBottom = allHeight*0.027;
      textPositionedLeft = null;
      textPositionedRight = allHeight*0.01;
      iconAlignment = null;
      lineWidth = 0.41;
    }else if(801 <= weatherConditionID && weatherConditionID <= 804) {
      weatherCondition = 'Cloudy';
      icon = MdiIcons.cloud;
      backGroundColor = cloudyGreen;
      iconColor = cloudyIcon;
      iconSize = allHeight*0.38;
      iconPositionedTop = null;
      iconPositionedBottom = null;
      iconPositionedLeft = null;
      iconPositionedRight = null;
      textPositionedTop = null;
      textPositionedBottom = null;
      textPositionedLeft = allWidth*0.08;
      textPositionedRight = null;
      iconAlignment = AlignmentDirectional.center;
      lineWidth = 0.5;
    }else if(weatherConditionID == 800) {
      weatherCondition = 'Clear';
      icon = CupertinoIcons.circle_filled;
      backGroundColor = clearPink;
      iconColor = clearIcon;
      iconSize = allHeight*0.41;
      iconPositionedTop = null;
      iconPositionedBottom = null;
      iconPositionedLeft = null;
      iconPositionedRight = null;
      textPositionedTop = null;
      textPositionedBottom = allHeight*0.04;
      textPositionedLeft = allWidth*0.06;
      textPositionedRight = null;
      iconAlignment = AlignmentDirectional.bottomCenter;
      lineWidth = 0.41;
    }

    place = weatherData['name'];

    if(weatherData['main']['temp'] == double) {
      var temp = weatherData['main']['temp'];
      temperature = temp.toInt();
    }else {
      temperature = weatherData['main']['temp'];
    }

    moisture = weatherData['main']['humidity'];
    wind = weatherData['wind']['speed'];

    String monthName1 = Date().monthName();
    monthName = monthName1;

    int dayNo1 = Date().dayName();
    dayNo = dayNo1;

    String weekDayN = Date().weekDayName();
    weekdayName = weekDayN;
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: backGroundColor,
    ));

    return MainBody(date: '$monthName $dayNo . $weekdayName',weatherCondition: '$weatherCondition',place: '$place',temperature: 'Temperature $temperature°C',moisture: 'Moisture $moisture%',icon: icon,wind: 'Wind $wind km/s',statusBarColor: backGroundColor,iconSize: iconSize,iconColor: iconColor,iconPositionedTop: iconPositionedTop,iconPositionedBottom: iconPositionedBottom,iconPositionedLeft: iconPositionedLeft,iconPositionedRight: iconPositionedRight,textPositionedTop: textPositionedTop,textPositionedBottom: textPositionedBottom,textPositionedLeft: textPositionedLeft,textPositionedRight: textPositionedRight,iconAlignment: iconAlignment,lineWidth: lineWidth,);

  }
}


//MainBody(date: 'April 12 . Friday',weatherCondition: 'Clear',place: 'Shenzhen',temperature: 'Temperature 30*C',moisture: 'Moisture 40%',icon: CupertinoIcons.circle_filled,wind: 'Neceyli 4H/U',statusBarColor: Color(sunnyPink),iconSize: 350,iconColor: Color(sunnyIcon),iconPositionedTop: 0,iconPositionedBottom: null,iconPositionedLeft: null,iconPositionedRight: 25,textPositionedTop: null,textPositionedBottom: 20,textPositionedLeft: 20,textPositionedRight: null,);
//MainBody(date: 'April 12 . Friday',weatherCondition: 'Cloudy',place: 'Shenzhen',temperature: 'Temperature 30*C',moisture: 'Moisture 40%',icon: MdiIcons.cloud,wind: 'Neceyli 4H/U',statusBarColor: Color(cloudyGreen),iconSize: 380,iconColor: Color(cloudyIcon),iconPositionedTop: 0,iconPositionedBottom: null,iconPositionedLeft: null,iconPositionedRight: -50,textPositionedTop: null,textPositionedBottom: 50,textPositionedLeft: 10,textPositionedRight: null,);
//MainBody(date: 'April 12 . Friday',weatherCondition: 'Rainy',place: 'Shenzhen',temperature: 'Temperature 30*C',moisture: 'Moisture 40%',icon: FontAwesomeIcons.cloudShowersHeavy,wind: 'Neceyli 4H/U',statusBarColor: Color(rainyBlue),iconSize: 350,iconColor: Color(rainyIcon),iconPositionedTop: null,iconPositionedBottom: -25,iconPositionedLeft: null,iconPositionedRight: -55,textPositionedTop: null,textPositionedBottom: 110,textPositionedLeft: 30,textPositionedRight: null,);
//MainBody(date: 'April 12 . Friday',weatherCondition: 'Windy',place: 'Shenzhen',temperature: 'Temperature 30*C',moisture: 'Moisture 40%',icon: FontAwesomeIcons.wind,wind: 'Neceyli 4H/U',statusBarColor: Color(windyBlue),iconSize: 350,iconColor: Color(windyIcon),iconPositionedTop: 0,iconPositionedBottom: null,iconPositionedLeft: -25,iconPositionedRight: null,textPositionedTop: null,textPositionedBottom: 20,textPositionedLeft: null,textPositionedRight: 20,);
//MainBody(date: 'April 12 . Friday',weatherCondition: 'Snowy',place: 'Shenzhen',temperature: 'Temperature 30*C',moisture: 'Moisture 40%',icon: FontAwesomeIcons.solidSnowflake,wind: 'Neceyli 4H/U',statusBarColor: Color(snowyBlack),iconSize: 350,iconColor: Color(snowyIcon),iconPositionedTop: 25,iconPositionedBottom: null,iconPositionedLeft: -60,iconPositionedRight: null,textPositionedTop: null,textPositionedBottom: 30,textPositionedLeft: null,textPositionedRight: 40,);
//MainBody(date: 'April 12 . Friday',weatherCondition: 'Foggy',place: 'Shenzhen',temperature: 'Temperature 30*C',moisture: 'Moisture 40%',icon: Meteocons.fog_cloud,wind: 'Neceyli 4H/U',statusBarColor: Color(foggyTan),iconSize: 400,iconColor: Color(foggyIcon),iconPositionedTop: -20,iconPositionedBottom: null,iconPositionedLeft: -85,iconPositionedRight: null,textPositionedTop: null,textPositionedBottom: 30,textPositionedLeft: null,textPositionedRight: 30,);
//MainBody(date: 'April 12 . Friday',weatherCondition: 'Stormy',place: 'Shenzhen',temperature: 'Temperature 30*C',moisture: 'Moisture 40%',icon: RpgAwesome.lightning_storm,wind: 'Neceyli 4H/U',statusBarColor: Color(0xFF5CDB94),iconSize: 400,iconColor: Color(0xFF05396B),iconPositionedTop: -20,iconPositionedBottom: null,iconPositionedLeft: -70,iconPositionedRight: null,textPositionedTop: null,textPositionedBottom: 30,textPositionedLeft: null,textPositionedRight: 10,);
//MainBody(date: 'April 12 . Friday',weatherCondition: 'Drizzle',place: 'Shenzhen',temperature: 'Temperature 30*C',moisture: 'Moisture 40%',icon: Meteocons.drizzle_inv,wind: 'Neceyli 4H/U',statusBarColor: Color(0xFFABA5BF),iconSize: 400,iconColor: Color(0xFF583E2F),iconPositionedTop: -20,iconPositionedBottom: null,iconPositionedLeft: -70,iconPositionedRight: null,textPositionedTop: null,textPositionedBottom: 30,textPositionedLeft: null,textPositionedRight: 10,);
