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

  HomePage({this.locationWeather,this.daysWeather});

  final locationWeather;
  final daysWeather;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int weatherConditionID,weatherConditionID2,weatherConditionID3,weatherConditionID4,weatherConditionID5,weatherConditionID6,weatherConditionID7,weatherConditionID8;
  String weatherCondition,weatherCondition2,weatherCondition3,weatherCondition4,weatherCondition5,weatherCondition6,weatherCondition7,weatherCondition8;
  String place,place2,place3,place4,place5,place6,place7,place8;
  var temperature,temperature2,temperature3,temperature4,temperature5,temperature6,temperature7,temperature8;
  var moisture,moisture2,moisture3,moisture4,moisture5,moisture6,moisture7,moisture8;
  var wind,wind2,wind3,wind4,wind5,wind6,wind7,wind8;
  IconData icon,icon2,icon3,icon4,icon5,icon6,icon7,icon8;
  Color backGroundColor,backGroundColor2,backGroundColor3,backGroundColor4,backGroundColor5,backGroundColor6,backGroundColor7,backGroundColor8;
  Color iconColor,iconColor2,iconColor3,iconColor4,iconColor5,iconColor6,iconColor7,iconColor8;
  String monthName,monthName2,monthName3,monthName4,monthName5,monthName6,monthName7,monthName8;
  int dayNo,dayNo2,dayNo3,dayNo4,dayNo5,dayNo6,dayNo7,dayNo8;
  String weekdayName,weekdayName2,weekdayName3,weekdayName4,weekdayName5,weekdayName6,weekdayName7,weekdayName8;
  var iconSize,iconSize2,iconSize3,iconSize4,iconSize5,iconSize6,iconSize7,iconSize8;
  var iconPositionedTop,iconPositionedTop2,iconPositionedTop3,iconPositionedTop4,iconPositionedTop5,iconPositionedTop6,iconPositionedTop7,iconPositionedTop8;
  var iconPositionedBottom,iconPositionedBottom2,iconPositionedBottom3,iconPositionedBottom4,iconPositionedBottom5,iconPositionedBottom6,iconPositionedBottom7,iconPositionedBottom8;
  var iconPositionedLeft,iconPositionedLeft2,iconPositionedLeft3,iconPositionedLeft4,iconPositionedLeft5,iconPositionedLeft6,iconPositionedLeft7,iconPositionedLeft8;
  var iconPositionedRight,iconPositionedRight2,iconPositionedRight3,iconPositionedRight4,iconPositionedRight5,iconPositionedRight6,iconPositionedRight7,iconPositionedRight8;
  var textPositionedTop,textPositionedTop2,textPositionedTop3,textPositionedTop4,textPositionedTop5,textPositionedTop6,textPositionedTop7,textPositionedTop8;
  var textPositionedBottom,textPositionedBottom2,textPositionedBottom3,textPositionedBottom4,textPositionedBottom5,textPositionedBottom6,textPositionedBottom7,textPositionedBottom8;
  var textPositionedLeft,textPositionedLeft2,textPositionedLeft3,textPositionedLeft4,textPositionedLeft5,textPositionedLeft6,textPositionedLeft7,textPositionedLeft8;
  var textPositionedRight,textPositionedRight2,textPositionedRight3,textPositionedRight4,textPositionedRight5,textPositionedRight6,textPositionedRight7,textPositionedRight8;
  AlignmentDirectional iconAlignment,iconAlignment2,iconAlignment3,iconAlignment4,iconAlignment5,iconAlignment6,iconAlignment7,iconAlignment8;
  double lineWidth,lineWidth2,lineWidth3,lineWidth4,lineWidth5,lineWidth6,lineWidth7,lineWidth8;


  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather, widget.daysWeather);
  }

  void updateUI(dynamic weatherData, dynamic daysWeatherData) {

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

    //------------------------------------------------2-------------------------------------------------\\

    weatherConditionID2 = daysWeatherData['daily'][1]['weather'][0]['id'];

    if(200 <= weatherConditionID2 && weatherConditionID2 <= 232) {
      weatherCondition2 = 'Stormy';
      icon2 = RpgAwesome.lightning_storm;
      backGroundColor2 = stormyGreen;
      iconColor2 = stormyIcon;
      iconSize2 = allHeight*0.4;
      iconPositionedTop2 = -allWidth*0.02;
      iconPositionedBottom2 = null;
      iconPositionedLeft2 = -allWidth*0.15;
      iconPositionedRight2 = null;
      textPositionedTop2 = null;
      textPositionedBottom2 = allHeight*0.03;
      textPositionedLeft2 = null;
      textPositionedRight2 = allHeight*0.01;
      iconAlignment2 = null;
      lineWidth2 = 0.41;
    }else if(300 <= weatherConditionID2 && weatherConditionID2 <= 321) {
      weatherCondition2 = 'Drizzle';
      icon2 = Meteocons.drizzle_inv;
      backGroundColor2 = drizzlePurple;
      iconColor2 = drizzleIcon;
      iconSize2 = allHeight*0.4;
      iconPositionedTop2 = -allHeight*0.02;
      iconPositionedBottom2 = null;
      iconPositionedLeft2 = -allHeight*0.08;
      iconPositionedRight2 = null;
      textPositionedTop2 = null;
      textPositionedBottom2 = allHeight*0.03;
      textPositionedLeft2 = null;
      textPositionedRight2 = allHeight*0.01;
      iconAlignment2 = null;
      lineWidth2 = 0.41;
    }else if(500 <= weatherConditionID2 && weatherConditionID2 <= 531) {
      weatherCondition2 = 'Rainy';
      icon2 = FontAwesome5.cloud_rain;
      backGroundColor2 = rainyBlue;
      iconColor2 = rainyIcon;
      iconSize2 = allHeight*0.35;
      iconPositionedTop2 = null;
      iconPositionedBottom2 = null;
      iconPositionedLeft2 = -allHeight*0.06;
      iconPositionedRight2 = null;
      textPositionedTop2 = null;
      textPositionedBottom2 = allHeight*0.04;
      textPositionedLeft2 = null;
      textPositionedRight2 = allWidth*0.06;
      iconAlignment2 = null;
      lineWidth2 = 0.41;
    }else if(600 <= weatherConditionID2 && weatherConditionID2 <= 622) {
      weatherCondition2 = 'Snowy';
      icon2 = FontAwesomeIcons.solidSnowflake;
      backGroundColor2 = snowyBlack;
      iconColor2 = snowyIcon;
      iconSize2 = allHeight*0.35;
      iconPositionedTop2 = null;
      iconPositionedBottom2 = null;
      iconPositionedLeft2 = null;
      iconPositionedRight2 = null;
      textPositionedTop2 = null;
      textPositionedBottom2 = allHeight*0.02;
      textPositionedLeft2 = allWidth*0.1;
      textPositionedRight2 = null;
      iconAlignment2 = AlignmentDirectional.bottomCenter;
      lineWidth2 = 0.41;
    }else if(701 <= weatherConditionID2 && weatherConditionID2 <= 781) {
      weatherCondition2 = 'Foggy';
      icon2 = Meteocons.fog_cloud;
      backGroundColor2 = foggyTan;
      iconColor2 = foggyIcon;
      iconSize2 = allHeight*0.42;
      iconPositionedTop2 = -allHeight*0.02;
      iconPositionedBottom2 = null;
      iconPositionedLeft2 = -allHeight*0.1;
      iconPositionedRight2 = null;
      textPositionedTop2 = null;
      textPositionedBottom2 = allHeight*0.027;
      textPositionedLeft2 = null;
      textPositionedRight2 = allHeight*0.01;
      iconAlignment2 = null;
      lineWidth2 = 0.41;
    }else if(801 <= weatherConditionID2 && weatherConditionID2 <= 804) {
      weatherCondition2 = 'Cloudy';
      icon2 = MdiIcons.cloud;
      backGroundColor2 = cloudyGreen;
      iconColor2 = cloudyIcon;
      iconSize2 = allHeight*0.38;
      iconPositionedTop2 = null;
      iconPositionedBottom2 = null;
      iconPositionedLeft2 = null;
      iconPositionedRight2 = null;
      textPositionedTop2 = null;
      textPositionedBottom2 = null;
      textPositionedLeft2 = allWidth*0.08;
      textPositionedRight2 = null;
      iconAlignment2 = AlignmentDirectional.center;
      lineWidth2 = 0.5;
    }else if(weatherConditionID2 == 800) {
      weatherCondition2 = 'Clear';
      icon2 = CupertinoIcons.circle_filled;
      backGroundColor2 = clearPink;
      iconColor2 = clearIcon;
      iconSize2 = allHeight*0.41;
      iconPositionedTop2 = null;
      iconPositionedBottom2 = null;
      iconPositionedLeft2 = null;
      iconPositionedRight2 = null;
      textPositionedTop2 = null;
      textPositionedBottom2 = allHeight*0.04;
      textPositionedLeft2 = allWidth*0.06;
      textPositionedRight2 = null;
      iconAlignment2 = AlignmentDirectional.bottomCenter;
      lineWidth2 = 0.41;
    }

    place2 = weatherData['name'];

    if(daysWeatherData['daily'][1]['temp']['day'] == double) {
      var temp2 = daysWeatherData['daily'][1]['temp']['day'];
      temperature2 = temp2.toInt();
    }else {
      temperature2 = daysWeatherData['daily'][1]['temp']['day'];
    }

    moisture2 = daysWeatherData['daily'][1]['humidity'];
    wind2 = daysWeatherData['daily'][1]['wind_speed'];


    String monthName1_2 = Date().monthName2(1);
    monthName2 = monthName1_2;

    int dayNo1_2 = Date().dayName2(1);
    dayNo2 = dayNo1_2;

    String weekDayN_2 = Date().weekDayName2(1);
    weekdayName2 = weekDayN_2;

    //------------------------------------------------3-------------------------------------------------\\

    weatherConditionID3 = daysWeatherData['daily'][2]['weather'][0]['id'];

    if(200 <= weatherConditionID3 && weatherConditionID3 <= 232) {
      weatherCondition3 = 'Stormy';
      icon3 = RpgAwesome.lightning_storm;
      backGroundColor3 = stormyGreen;
      iconColor3 = stormyIcon;
      iconSize3 = allHeight*0.4;
      iconPositionedTop3 = -allWidth*0.02;
      iconPositionedBottom3 = null;
      iconPositionedLeft3 = -allWidth*0.15;
      iconPositionedRight3 = null;
      textPositionedTop3 = null;
      textPositionedBottom3 = allHeight*0.03;
      textPositionedLeft3 = null;
      textPositionedRight3 = allHeight*0.01;
      iconAlignment3 = null;
      lineWidth3 = 0.41;
    }else if(300 <= weatherConditionID3 && weatherConditionID3 <= 321) {
      weatherCondition3 = 'Drizzle';
      icon3 = Meteocons.drizzle_inv;
      backGroundColor3 = drizzlePurple;
      iconColor3 = drizzleIcon;
      iconSize3 = allHeight*0.4;
      iconPositionedTop3 = -allHeight*0.02;
      iconPositionedBottom3 = null;
      iconPositionedLeft3 = -allHeight*0.08;
      iconPositionedRight3 = null;
      textPositionedTop3 = null;
      textPositionedBottom3 = allHeight*0.03;
      textPositionedLeft3 = null;
      textPositionedRight3 = allHeight*0.01;
      iconAlignment3 = null;
      lineWidth3 = 0.41;
    }else if(500 <= weatherConditionID3 && weatherConditionID3 <= 531) {
      weatherCondition3 = 'Rainy';
      icon3 = FontAwesome5.cloud_rain;
      backGroundColor3 = rainyBlue;
      iconColor3 = rainyIcon;
      iconSize3 = allHeight*0.35;
      iconPositionedTop3 = null;
      iconPositionedBottom3 = null;
      iconPositionedLeft3 = -allHeight*0.06;
      iconPositionedRight3 = null;
      textPositionedTop3 = null;
      textPositionedBottom3 = allHeight*0.04;
      textPositionedLeft3 = null;
      textPositionedRight3 = allWidth*0.06;
      iconAlignment3 = null;
      lineWidth3 = 0.41;
    }else if(600 <= weatherConditionID3 && weatherConditionID3 <= 622) {
      weatherCondition3 = 'Snowy';
      icon3 = FontAwesomeIcons.solidSnowflake;
      backGroundColor3 = snowyBlack;
      iconColor3 = snowyIcon;
      iconSize3 = allHeight*0.35;
      iconPositionedTop3 = null;
      iconPositionedBottom3 = null;
      iconPositionedLeft3 = null;
      iconPositionedRight3 = null;
      textPositionedTop3 = null;
      textPositionedBottom3 = allHeight*0.02;
      textPositionedLeft3 = allWidth*0.1;
      textPositionedRight3= null;
      iconAlignment3 = AlignmentDirectional.bottomCenter;
      lineWidth3 = 0.41;
    }else if(701 <= weatherConditionID3 && weatherConditionID3 <= 781) {
      weatherCondition3 = 'Foggy';
      icon3 = Meteocons.fog_cloud;
      backGroundColor3 = foggyTan;
      iconColor3 = foggyIcon;
      iconSize3 = allHeight*0.42;
      iconPositionedTop3 = -allHeight*0.02;
      iconPositionedBottom3 = null;
      iconPositionedLeft3 = -allHeight*0.1;
      iconPositionedRight3 = null;
      textPositionedTop3 = null;
      textPositionedBottom3 = allHeight*0.027;
      textPositionedLeft3 = null;
      textPositionedRight3 = allHeight*0.01;
      iconAlignment3 = null;
      lineWidth3 = 0.41;
    }else if(801 <= weatherConditionID3 && weatherConditionID3 <= 804) {
      weatherCondition3 = 'Cloudy';
      icon3 = MdiIcons.cloud;
      backGroundColor3 = cloudyGreen;
      iconColor3 = cloudyIcon;
      iconSize3 = allHeight*0.38;
      iconPositionedTop3 = null;
      iconPositionedBottom3 = null;
      iconPositionedLeft3 = null;
      iconPositionedRight3 = null;
      textPositionedTop3 = null;
      textPositionedBottom3 = null;
      textPositionedLeft3 = allWidth*0.08;
      textPositionedRight3 = null;
      iconAlignment3 = AlignmentDirectional.center;
      lineWidth3 = 0.5;
    }else if(weatherConditionID3 == 800) {
      weatherCondition3 = 'Clear';
      icon3 = CupertinoIcons.circle_filled;
      backGroundColor3 = clearPink;
      iconColor3 = clearIcon;
      iconSize3 = allHeight*0.41;
      iconPositionedTop3 = null;
      iconPositionedBottom3 = null;
      iconPositionedLeft3 = null;
      iconPositionedRight3 = null;
      textPositionedTop3 = null;
      textPositionedBottom3 = allHeight*0.04;
      textPositionedLeft3 = allWidth*0.06;
      textPositionedRight3 = null;
      iconAlignment3 = AlignmentDirectional.bottomCenter;
      lineWidth3 = 0.41;
    }

    place3 = weatherData['name'];

    if(daysWeatherData['daily'][2]['temp']['day'] == double) {
      var temp3 = daysWeatherData['daily'][2]['temp']['day'];
      temperature3 = temp3.toInt();
    }else {
      temperature3 = daysWeatherData['daily'][2]['temp']['day'];
    }

    moisture3 = daysWeatherData['daily'][2]['humidity'];
    wind3 = daysWeatherData['daily'][2]['wind_speed'];


    String monthName1_3 = Date().monthName2(2);
    monthName3 = monthName1_3;

    int dayNo1_3 = Date().dayName2(2);
    dayNo3 = dayNo1_3;

    String weekDayN_3 = Date().weekDayName2(2);
    weekdayName3 = weekDayN_3;

    //------------------------------------------------4-------------------------------------------------\\

    weatherConditionID4 = daysWeatherData['daily'][3]['weather'][0]['id'];

    if(200 <= weatherConditionID4 && weatherConditionID4 <= 232) {
      weatherCondition4 = 'Stormy';
      icon4 = RpgAwesome.lightning_storm;
      backGroundColor4 = stormyGreen;
      iconColor4 = stormyIcon;
      iconSize4 = allHeight*0.4;
      iconPositionedTop4 = -allWidth*0.02;
      iconPositionedBottom4 = null;
      iconPositionedLeft4 = -allWidth*0.15;
      iconPositionedRight4 = null;
      textPositionedTop4 = null;
      textPositionedBottom4 = allHeight*0.03;
      textPositionedLeft4 = null;
      textPositionedRight4 = allHeight*0.01;
      iconAlignment4 = null;
      lineWidth4 = 0.41;
    }else if(300 <= weatherConditionID4 && weatherConditionID4 <= 321) {
      weatherCondition4 = 'Drizzle';
      icon4 = Meteocons.drizzle_inv;
      backGroundColor4 = drizzlePurple;
      iconColor4 = drizzleIcon;
      iconSize4 = allHeight*0.4;
      iconPositionedTop4 = -allHeight*0.02;
      iconPositionedBottom4 = null;
      iconPositionedLeft4 = -allHeight*0.08;
      iconPositionedRight4 = null;
      textPositionedTop4 = null;
      textPositionedBottom4 = allHeight*0.03;
      textPositionedLeft4 = null;
      textPositionedRight4 = allHeight*0.01;
      iconAlignment4 = null;
      lineWidth4 = 0.41;
    }else if(500 <= weatherConditionID4 && weatherConditionID4 <= 531) {
      weatherCondition4 = 'Rainy';
      icon4 = FontAwesome5.cloud_rain;
      backGroundColor4 = rainyBlue;
      iconColor4 = rainyIcon;
      iconSize4 = allHeight*0.35;
      iconPositionedTop4 = null;
      iconPositionedBottom4 = null;
      iconPositionedLeft4 = -allHeight*0.06;
      iconPositionedRight4 = null;
      textPositionedTop4 = null;
      textPositionedBottom4 = allHeight*0.04;
      textPositionedLeft4 = null;
      textPositionedRight4 = allWidth*0.06;
      iconAlignment4 = null;
      lineWidth4 = 0.41;
    }else if(600 <= weatherConditionID4 && weatherConditionID4 <= 622) {
      weatherCondition4 = 'Snowy';
      icon4 = FontAwesomeIcons.solidSnowflake;
      backGroundColor4 = snowyBlack;
      iconColor4 = snowyIcon;
      iconSize4 = allHeight*0.35;
      iconPositionedTop4 = null;
      iconPositionedBottom4 = null;
      iconPositionedLeft4 = null;
      iconPositionedRight4 = null;
      textPositionedTop4 = null;
      textPositionedBottom4 = allHeight*0.02;
      textPositionedLeft4 = allWidth*0.1;
      textPositionedRight4 = null;
      iconAlignment4 = AlignmentDirectional.bottomCenter;
      lineWidth4 = 0.41;
    }else if(701 <= weatherConditionID4 && weatherConditionID4 <= 781) {
      weatherCondition4 = 'Foggy';
      icon4 = Meteocons.fog_cloud;
      backGroundColor4 = foggyTan;
      iconColor4 = foggyIcon;
      iconSize4 = allHeight*0.42;
      iconPositionedTop4 = -allHeight*0.02;
      iconPositionedBottom4 = null;
      iconPositionedLeft4 = -allHeight*0.1;
      iconPositionedRight4 = null;
      textPositionedTop4 = null;
      textPositionedBottom4 = allHeight*0.027;
      textPositionedLeft4 = null;
      textPositionedRight4 = allHeight*0.01;
      iconAlignment4 = null;
      lineWidth4 = 0.41;
    }else if(801 <= weatherConditionID4 && weatherConditionID4 <= 804) {
      weatherCondition4 = 'Cloudy';
      icon4 = MdiIcons.cloud;
      backGroundColor4 = cloudyGreen;
      iconColor4 = cloudyIcon;
      iconSize4 = allHeight*0.38;
      iconPositionedTop4 = null;
      iconPositionedBottom4 = null;
      iconPositionedLeft4 = null;
      iconPositionedRight4 = null;
      textPositionedTop4 = null;
      textPositionedBottom4 = null;
      textPositionedLeft4 = allWidth*0.08;
      textPositionedRight4 = null;
      iconAlignment4 = AlignmentDirectional.center;
      lineWidth4 = 0.5;
    }else if(weatherConditionID4 == 800) {
      weatherCondition4 = 'Clear';
      icon4 = CupertinoIcons.circle_filled;
      backGroundColor4 = clearPink;
      iconColor4 = clearIcon;
      iconSize4 = allHeight*0.41;
      iconPositionedTop4 = null;
      iconPositionedBottom4 = null;
      iconPositionedLeft4 = null;
      iconPositionedRight4 = null;
      textPositionedTop4 = null;
      textPositionedBottom4 = allHeight*0.04;
      textPositionedLeft4 = allWidth*0.06;
      textPositionedRight4 = null;
      iconAlignment4 = AlignmentDirectional.bottomCenter;
      lineWidth4 = 0.41;
    }

    place4 = weatherData['name'];

    if(daysWeatherData['daily'][3]['temp']['day'] == double) {
      var temp4 = daysWeatherData['daily'][3]['temp']['day'];
      temperature4 = temp4.toInt();
    }else {
      temperature4 = daysWeatherData['daily'][3]['temp']['day'];
    }

    moisture4 = daysWeatherData['daily'][3]['humidity'];
    wind4 = daysWeatherData['daily'][3]['wind_speed'];


    String monthName1_4 = Date().monthName2(3);
    monthName4 = monthName1_4;

    int dayNo1_4 = Date().dayName2(3);
    dayNo4 = dayNo1_4;

    String weekDayN_4 = Date().weekDayName2(3);
    weekdayName4 = weekDayN_4;

    //------------------------------------------------5-------------------------------------------------\\

    weatherConditionID5 = daysWeatherData['daily'][4]['weather'][0]['id'];

    if(200 <= weatherConditionID5 && weatherConditionID5 <= 232) {
      weatherCondition5 = 'Stormy';
      icon5 = RpgAwesome.lightning_storm;
      backGroundColor5 = stormyGreen;
      iconColor5 = stormyIcon;
      iconSize5 = allHeight*0.4;
      iconPositionedTop5 = -allWidth*0.02;
      iconPositionedBottom5 = null;
      iconPositionedLeft5 = -allWidth*0.15;
      iconPositionedRight5 = null;
      textPositionedTop5 = null;
      textPositionedBottom5 = allHeight*0.03;
      textPositionedLeft5 = null;
      textPositionedRight5 = allHeight*0.01;
      iconAlignment5 = null;
      lineWidth5 = 0.41;
    }else if(300 <= weatherConditionID5 && weatherConditionID5 <= 321) {
      weatherCondition5 = 'Drizzle';
      icon5 = Meteocons.drizzle_inv;
      backGroundColor5 = drizzlePurple;
      iconColor5 = drizzleIcon;
      iconSize5 = allHeight*0.4;
      iconPositionedTop5 = -allHeight*0.02;
      iconPositionedBottom5 = null;
      iconPositionedLeft5 = -allHeight*0.08;
      iconPositionedRight5 = null;
      textPositionedTop5 = null;
      textPositionedBottom5 = allHeight*0.03;
      textPositionedLeft5 = null;
      textPositionedRight5 = allHeight*0.01;
      iconAlignment5 = null;
      lineWidth5 = 0.41;
    }else if(500 <= weatherConditionID5 && weatherConditionID5 <= 531) {
      weatherCondition5 = 'Rainy';
      icon5 = FontAwesome5.cloud_rain;
      backGroundColor5 = rainyBlue;
      iconColor5 = rainyIcon;
      iconSize5 = allHeight*0.35;
      iconPositionedTop5 = null;
      iconPositionedBottom5 = null;
      iconPositionedLeft5 = -allHeight*0.06;
      iconPositionedRight5 = null;
      textPositionedTop5 = null;
      textPositionedBottom5 = allHeight*0.04;
      textPositionedLeft5 = null;
      textPositionedRight5 = allWidth*0.06;
      iconAlignment5 = null;
      lineWidth5 = 0.41;
    }else if(600 <= weatherConditionID5 && weatherConditionID5 <= 622) {
      weatherCondition5 = 'Snowy';
      icon5 = FontAwesomeIcons.solidSnowflake;
      backGroundColor5 = snowyBlack;
      iconColor5 = snowyIcon;
      iconSize5 = allHeight*0.35;
      iconPositionedTop5 = null;
      iconPositionedBottom5 = null;
      iconPositionedLeft5 = null;
      iconPositionedRight5 = null;
      textPositionedTop5 = null;
      textPositionedBottom5 = allHeight*0.02;
      textPositionedLeft5 = allWidth*0.1;
      textPositionedRight5= null;
      iconAlignment5 = AlignmentDirectional.bottomCenter;
      lineWidth5 = 0.41;
    }else if(701 <= weatherConditionID5 && weatherConditionID5 <= 781) {
      weatherCondition5 = 'Foggy';
      icon5 = Meteocons.fog_cloud;
      backGroundColor5 = foggyTan;
      iconColor5 = foggyIcon;
      iconSize5 = allHeight*0.42;
      iconPositionedTop5 = -allHeight*0.02;
      iconPositionedBottom5 = null;
      iconPositionedLeft5 = -allHeight*0.1;
      iconPositionedRight5 = null;
      textPositionedTop5 = null;
      textPositionedBottom5 = allHeight*0.027;
      textPositionedLeft5 = null;
      textPositionedRight5 = allHeight*0.01;
      iconAlignment5 = null;
      lineWidth5 = 0.41;
    }else if(801 <= weatherConditionID5 && weatherConditionID5 <= 804) {
      weatherCondition5 = 'Cloudy';
      icon5 = MdiIcons.cloud;
      backGroundColor5 = cloudyGreen;
      iconColor5 = cloudyIcon;
      iconSize5 = allHeight*0.38;
      iconPositionedTop5 = null;
      iconPositionedBottom5 = null;
      iconPositionedLeft5 = null;
      iconPositionedRight5 = null;
      textPositionedTop5 = null;
      textPositionedBottom5 = null;
      textPositionedLeft5 = allWidth*0.08;
      textPositionedRight5 = null;
      iconAlignment5 = AlignmentDirectional.center;
      lineWidth5 = 0.5;
    }else if(weatherConditionID5 == 800) {
      weatherCondition5 = 'Clear';
      icon5 = CupertinoIcons.circle_filled;
      backGroundColor5 = clearPink;
      iconColor5 = clearIcon;
      iconSize5 = allHeight*0.41;
      iconPositionedTop5 = null;
      iconPositionedBottom5 = null;
      iconPositionedLeft5 = null;
      iconPositionedRight5 = null;
      textPositionedTop5 = null;
      textPositionedBottom5 = allHeight*0.04;
      textPositionedLeft5 = allWidth*0.06;
      textPositionedRight5 = null;
      iconAlignment5 = AlignmentDirectional.bottomCenter;
      lineWidth5 = 0.41;
    }

    place5 = weatherData['name'];

    if(daysWeatherData['daily'][4]['temp']['day'] == double) {
      var temp5 = daysWeatherData['daily'][4]['temp']['day'];
      temperature5 = temp5.toInt();
    }else {
      temperature5 = daysWeatherData['daily'][4]['temp']['day'];
    }

    moisture5 = daysWeatherData['daily'][4]['humidity'];
    wind5 = daysWeatherData['daily'][4]['wind_speed'];


    String monthName1_5 = Date().monthName2(4);
    monthName5 = monthName1_5;

    int dayNo1_5 = Date().dayName2(4);
    dayNo5 = dayNo1_5;

    String weekDayN_5 = Date().weekDayName2(4);
    weekdayName5 = weekDayN_5;

    //------------------------------------------------6-------------------------------------------------\\

    weatherConditionID6 = daysWeatherData['daily'][5]['weather'][0]['id'];

    if(200 <= weatherConditionID6 && weatherConditionID6 <= 232) {
      weatherCondition6 = 'Stormy';
      icon6 = RpgAwesome.lightning_storm;
      backGroundColor6 = stormyGreen;
      iconColor6 = stormyIcon;
      iconSize6 = allHeight*0.4;
      iconPositionedTop6 = -allWidth*0.02;
      iconPositionedBottom6 = null;
      iconPositionedLeft6 = -allWidth*0.15;
      iconPositionedRight6 = null;
      textPositionedTop6 = null;
      textPositionedBottom6 = allHeight*0.03;
      textPositionedLeft6 = null;
      textPositionedRight6 = allHeight*0.01;
      iconAlignment6 = null;
      lineWidth6 = 0.41;
    }else if(300 <= weatherConditionID6 && weatherConditionID6 <= 321) {
      weatherCondition6 = 'Drizzle';
      icon6 = Meteocons.drizzle_inv;
      backGroundColor6 = drizzlePurple;
      iconColor6 = drizzleIcon;
      iconSize6 = allHeight*0.4;
      iconPositionedTop6 = -allHeight*0.02;
      iconPositionedBottom6 = null;
      iconPositionedLeft6 = -allHeight*0.08;
      iconPositionedRight6 = null;
      textPositionedTop6 = null;
      textPositionedBottom6 = allHeight*0.03;
      textPositionedLeft6 = null;
      textPositionedRight6 = allHeight*0.01;
      iconAlignment6 = null;
      lineWidth6 = 0.41;
    }else if(500 <= weatherConditionID6 && weatherConditionID6 <= 531) {
      weatherCondition6 = 'Rainy';
      icon6 = FontAwesome5.cloud_rain;
      backGroundColor6 = rainyBlue;
      iconColor6 = rainyIcon;
      iconSize6 = allHeight*0.35;
      iconPositionedTop6 = null;
      iconPositionedBottom6 = null;
      iconPositionedLeft6 = -allHeight*0.06;
      iconPositionedRight6 = null;
      textPositionedTop6 = null;
      textPositionedBottom6 = allHeight*0.04;
      textPositionedLeft6 = null;
      textPositionedRight6 = allWidth*0.06;
      iconAlignment6 = null;
      lineWidth6 = 0.41;
    }else if(600 <= weatherConditionID6 && weatherConditionID6 <= 622) {
      weatherCondition6 = 'Snowy';
      icon6 = FontAwesomeIcons.solidSnowflake;
      backGroundColor6 = snowyBlack;
      iconColor6 = snowyIcon;
      iconSize6 = allHeight*0.35;
      iconPositionedTop6 = null;
      iconPositionedBottom6 = null;
      iconPositionedLeft6 = null;
      iconPositionedRight6 = null;
      textPositionedTop6 = null;
      textPositionedBottom6 = allHeight*0.02;
      textPositionedLeft6 = allWidth*0.1;
      textPositionedRight6 = null;
      iconAlignment6 = AlignmentDirectional.bottomCenter;
      lineWidth6 = 0.41;
    }else if(701 <= weatherConditionID6 && weatherConditionID6 <= 781) {
      weatherCondition6 = 'Foggy';
      icon6 = Meteocons.fog_cloud;
      backGroundColor6 = foggyTan;
      iconColor6 = foggyIcon;
      iconSize6 = allHeight*0.42;
      iconPositionedTop6 = -allHeight*0.02;
      iconPositionedBottom6 = null;
      iconPositionedLeft6 = -allHeight*0.1;
      iconPositionedRight6 = null;
      textPositionedTop6 = null;
      textPositionedBottom6 = allHeight*0.027;
      textPositionedLeft6 = null;
      textPositionedRight6 = allHeight*0.01;
      iconAlignment6 = null;
      lineWidth6 = 0.41;
    }else if(801 <= weatherConditionID6 && weatherConditionID6 <= 804) {
      weatherCondition6 = 'Cloudy';
      icon6 = MdiIcons.cloud;
      backGroundColor6 = cloudyGreen;
      iconColor6 = cloudyIcon;
      iconSize6 = allHeight*0.38;
      iconPositionedTop6 = null;
      iconPositionedBottom6 = null;
      iconPositionedLeft6 = null;
      iconPositionedRight6 = null;
      textPositionedTop6 = null;
      textPositionedBottom6 = null;
      textPositionedLeft6 = allWidth*0.08;
      textPositionedRight6 = null;
      iconAlignment6 = AlignmentDirectional.center;
      lineWidth6 = 0.5;
    }else if(weatherConditionID6 == 800) {
      weatherCondition6 = 'Clear';
      icon6 = CupertinoIcons.circle_filled;
      backGroundColor6 = clearPink;
      iconColor6 = clearIcon;
      iconSize6 = allHeight*0.41;
      iconPositionedTop6 = null;
      iconPositionedBottom6 = null;
      iconPositionedLeft6 = null;
      iconPositionedRight6 = null;
      textPositionedTop6 = null;
      textPositionedBottom6 = allHeight*0.04;
      textPositionedLeft6 = allWidth*0.06;
      textPositionedRight6 = null;
      iconAlignment6 = AlignmentDirectional.bottomCenter;
      lineWidth6 = 0.41;
    }

    place6 = weatherData['name'];

    if(daysWeatherData['daily'][5]['temp']['day'] == double) {
      var temp6 = daysWeatherData['daily'][5]['temp']['day'];
      temperature6 = temp6.toInt();
    }else {
      temperature6 = daysWeatherData['daily'][5]['temp']['day'];
    }

    moisture6 = daysWeatherData['daily'][5]['humidity'];
    wind6 = daysWeatherData['daily'][5]['wind_speed'];


    String monthName1_6 = Date().monthName2(5);
    monthName6 = monthName1_6;

    int dayNo1_6 = Date().dayName2(5);
    dayNo6 = dayNo1_6;

    String weekDayN_6 = Date().weekDayName2(5);
    weekdayName6 = weekDayN_6;

    //------------------------------------------------7-------------------------------------------------\\

    weatherConditionID7 = daysWeatherData['daily'][6]['weather'][0]['id'];

    if(200 <= weatherConditionID7 && weatherConditionID7 <= 232) {
      weatherCondition7 = 'Stormy';
      icon7 = RpgAwesome.lightning_storm;
      backGroundColor7 = stormyGreen;
      iconColor7 = stormyIcon;
      iconSize7 = allHeight*0.4;
      iconPositionedTop7 = -allWidth*0.02;
      iconPositionedBottom7 = null;
      iconPositionedLeft7 = -allWidth*0.15;
      iconPositionedRight7 = null;
      textPositionedTop7 = null;
      textPositionedBottom7 = allHeight*0.03;
      textPositionedLeft7 = null;
      textPositionedRight7 = allHeight*0.01;
      iconAlignment7 = null;
      lineWidth7 = 0.41;
    }else if(300 <= weatherConditionID7 && weatherConditionID7 <= 321) {
      weatherCondition7 = 'Drizzle';
      icon7 = Meteocons.drizzle_inv;
      backGroundColor7 = drizzlePurple;
      iconColor7 = drizzleIcon;
      iconSize7 = allHeight*0.4;
      iconPositionedTop7 = -allHeight*0.02;
      iconPositionedBottom7 = null;
      iconPositionedLeft7 = -allHeight*0.08;
      iconPositionedRight7 = null;
      textPositionedTop7 = null;
      textPositionedBottom7 = allHeight*0.03;
      textPositionedLeft7 = null;
      textPositionedRight7 = allHeight*0.01;
      iconAlignment7 = null;
      lineWidth7 = 0.41;
    }else if(500 <= weatherConditionID7 && weatherConditionID7 <= 531) {
      weatherCondition7 = 'Rainy';
      icon7 = FontAwesome5.cloud_rain;
      backGroundColor7 = rainyBlue;
      iconColor7 = rainyIcon;
      iconSize7 = allHeight*0.35;
      iconPositionedTop7 = null;
      iconPositionedBottom7 = null;
      iconPositionedLeft7 = -allHeight*0.06;
      iconPositionedRight7 = null;
      textPositionedTop7 = null;
      textPositionedBottom7 = allHeight*0.04;
      textPositionedLeft7 = null;
      textPositionedRight7 = allWidth*0.06;
      iconAlignment7 = null;
      lineWidth7 = 0.41;
    }else if(600 <= weatherConditionID7 && weatherConditionID7 <= 622) {
      weatherCondition7 = 'Snowy';
      icon7 = FontAwesomeIcons.solidSnowflake;
      backGroundColor7 = snowyBlack;
      iconColor7 = snowyIcon;
      iconSize7 = allHeight*0.35;
      iconPositionedTop7 = null;
      iconPositionedBottom7 = null;
      iconPositionedLeft7 = null;
      iconPositionedRight7 = null;
      textPositionedTop7 = null;
      textPositionedBottom7 = allHeight*0.02;
      textPositionedLeft7 = allWidth*0.1;
      textPositionedRight7 = null;
      iconAlignment7 = AlignmentDirectional.bottomCenter;
      lineWidth7 = 0.41;
    }else if(701 <= weatherConditionID7 && weatherConditionID7 <= 781) {
      weatherCondition7 = 'Foggy';
      icon7 = Meteocons.fog_cloud;
      backGroundColor7 = foggyTan;
      iconColor7 = foggyIcon;
      iconSize7 = allHeight*0.42;
      iconPositionedTop7 = -allHeight*0.02;
      iconPositionedBottom7 = null;
      iconPositionedLeft7 = -allHeight*0.1;
      iconPositionedRight7 = null;
      textPositionedTop7 = null;
      textPositionedBottom7 = allHeight*0.027;
      textPositionedLeft7 = null;
      textPositionedRight7 = allHeight*0.01;
      iconAlignment7 = null;
      lineWidth7 = 0.41;
    }else if(801 <= weatherConditionID7 && weatherConditionID7 <= 804) {
      weatherCondition7 = 'Cloudy';
      icon7 = MdiIcons.cloud;
      backGroundColor7 = cloudyGreen;
      iconColor7 = cloudyIcon;
      iconSize7 = allHeight*0.38;
      iconPositionedTop7 = null;
      iconPositionedBottom7 = null;
      iconPositionedLeft7 = null;
      iconPositionedRight7 = null;
      textPositionedTop7 = null;
      textPositionedBottom7 = null;
      textPositionedLeft7 = allWidth*0.08;
      textPositionedRight7 = null;
      iconAlignment7 = AlignmentDirectional.center;
      lineWidth7 = 0.5;
    }else if(weatherConditionID7 == 800) {
      weatherCondition7 = 'Clear';
      icon7 = CupertinoIcons.circle_filled;
      backGroundColor7 = clearPink;
      iconColor7 = clearIcon;
      iconSize7 = allHeight*0.41;
      iconPositionedTop7 = null;
      iconPositionedBottom7 = null;
      iconPositionedLeft7 = null;
      iconPositionedRight7 = null;
      textPositionedTop7 = null;
      textPositionedBottom7 = allHeight*0.04;
      textPositionedLeft7 = allWidth*0.06;
      textPositionedRight7 = null;
      iconAlignment7 = AlignmentDirectional.bottomCenter;
      lineWidth7 = 0.41;
    }

    place7 = weatherData['name'];

    if(daysWeatherData['daily'][6]['temp']['day'] == double) {
      var temp7 = daysWeatherData['daily'][6]['temp']['day'];
      temperature7 = temp7.toInt();
    }else {
      temperature7 = daysWeatherData['daily'][6]['temp']['day'];
    }

    moisture7 = daysWeatherData['daily'][6]['humidity'];
    wind7 = daysWeatherData['daily'][6]['wind_speed'];


    String monthName1_7 = Date().monthName2(6);
    monthName7 = monthName1_7;

    int dayNo1_7 = Date().dayName2(6);
    dayNo7 = dayNo1_7;

    String weekDayN_7 = Date().weekDayName2(6);
    weekdayName7 = weekDayN_7;

    //------------------------------------------------8-------------------------------------------------\\

    weatherConditionID8 = daysWeatherData['daily'][7]['weather'][0]['id'];

    if(200 <= weatherConditionID8 && weatherConditionID8 <= 232) {
      weatherCondition8 = 'Stormy';
      icon8 = RpgAwesome.lightning_storm;
      backGroundColor8 = stormyGreen;
      iconColor8 = stormyIcon;
      iconSize8 = allHeight*0.4;
      iconPositionedTop8 = -allWidth*0.02;
      iconPositionedBottom8 = null;
      iconPositionedLeft8 = -allWidth*0.15;
      iconPositionedRight8 = null;
      textPositionedTop8 = null;
      textPositionedBottom8 = allHeight*0.03;
      textPositionedLeft8 = null;
      textPositionedRight8 = allHeight*0.01;
      iconAlignment8 = null;
      lineWidth8 = 0.41;
    }else if(300 <= weatherConditionID8 && weatherConditionID8 <= 321) {
      weatherCondition8 = 'Drizzle';
      icon8 = Meteocons.drizzle_inv;
      backGroundColor8 = drizzlePurple;
      iconColor8 = drizzleIcon;
      iconSize8 = allHeight*0.4;
      iconPositionedTop8 = -allHeight*0.02;
      iconPositionedBottom8 = null;
      iconPositionedLeft8 = -allHeight*0.08;
      iconPositionedRight8 = null;
      textPositionedTop8 = null;
      textPositionedBottom8 = allHeight*0.03;
      textPositionedLeft8 = null;
      textPositionedRight8 = allHeight*0.01;
      iconAlignment8 = null;
      lineWidth8 = 0.41;
    }else if(500 <= weatherConditionID8 && weatherConditionID8 <= 531) {
      weatherCondition8 = 'Rainy';
      icon8 = FontAwesome5.cloud_rain;
      backGroundColor8 = rainyBlue;
      iconColor8 = rainyIcon;
      iconSize8 = allHeight*0.35;
      iconPositionedTop8 = null;
      iconPositionedBottom8 = null;
      iconPositionedLeft8 = -allHeight*0.06;
      iconPositionedRight8 = null;
      textPositionedTop8 = null;
      textPositionedBottom8 = allHeight*0.04;
      textPositionedLeft8 = null;
      textPositionedRight8 = allWidth*0.06;
      iconAlignment8 = null;
      lineWidth8 = 0.41;
    }else if(600 <= weatherConditionID8 && weatherConditionID8 <= 622) {
      weatherCondition8 = 'Snowy';
      icon8 = FontAwesomeIcons.solidSnowflake;
      backGroundColor8 = snowyBlack;
      iconColor8 = snowyIcon;
      iconSize8 = allHeight*0.35;
      iconPositionedTop8 = null;
      iconPositionedBottom8 = null;
      iconPositionedLeft8 = null;
      iconPositionedRight8 = null;
      textPositionedTop8 = null;
      textPositionedBottom8 = allHeight*0.02;
      textPositionedLeft8 = allWidth*0.1;
      textPositionedRight8 = null;
      iconAlignment8 = AlignmentDirectional.bottomCenter;
      lineWidth8 = 0.41;
    }else if(701 <= weatherConditionID8 && weatherConditionID8 <= 781) {
      weatherCondition8 = 'Foggy';
      icon8 = Meteocons.fog_cloud;
      backGroundColor8 = foggyTan;
      iconColor8 = foggyIcon;
      iconSize8 = allHeight*0.42;
      iconPositionedTop8 = -allHeight*0.02;
      iconPositionedBottom8 = null;
      iconPositionedLeft8 = -allHeight*0.1;
      iconPositionedRight8 = null;
      textPositionedTop8 = null;
      textPositionedBottom8 = allHeight*0.027;
      textPositionedLeft8 = null;
      textPositionedRight8 = allHeight*0.01;
      iconAlignment8 = null;
      lineWidth8 = 0.41;
    }else if(801 <= weatherConditionID8 && weatherConditionID8 <= 804) {
      weatherCondition8 = 'Cloudy';
      icon8 = MdiIcons.cloud;
      backGroundColor8 = cloudyGreen;
      iconColor8 = cloudyIcon;
      iconSize8 = allHeight*0.38;
      iconPositionedTop8 = null;
      iconPositionedBottom8 = null;
      iconPositionedLeft8 = null;
      iconPositionedRight8 = null;
      textPositionedTop8 = null;
      textPositionedBottom8 = null;
      textPositionedLeft8 = allWidth*0.08;
      textPositionedRight8 = null;
      iconAlignment8 = AlignmentDirectional.center;
      lineWidth8 = 0.5;
    }else if(weatherConditionID8 == 800) {
      weatherCondition8 = 'Clear';
      icon8 = CupertinoIcons.circle_filled;
      backGroundColor8 = clearPink;
      iconColor8 = clearIcon;
      iconSize8 = allHeight*0.41;
      iconPositionedTop8 = null;
      iconPositionedBottom8 = null;
      iconPositionedLeft8 = null;
      iconPositionedRight8 = null;
      textPositionedTop8 = null;
      textPositionedBottom8 = allHeight*0.04;
      textPositionedLeft8 = allWidth*0.06;
      textPositionedRight8 = null;
      iconAlignment8 = AlignmentDirectional.bottomCenter;
      lineWidth8 = 0.41;
    }

    place8 = weatherData['name'];

    if(daysWeatherData['daily'][7]['temp']['day'] == double) {
      var temp8 = daysWeatherData['daily'][7]['temp']['day'];
      temperature8 = temp8.toInt();
    }else {
      temperature8 = daysWeatherData['daily'][7]['temp']['day'];
    }

    moisture8 = daysWeatherData['daily'][7]['humidity'];
    wind8 = daysWeatherData['daily'][7]['wind_speed'];


    String monthName1_8 = Date().monthName2(7);
    monthName8 = monthName1_8;

    int dayNo1_8 = Date().dayName2(7);
    dayNo8 = dayNo1_8;

    String weekDayN_8 = Date().weekDayName2(7);
    weekdayName8 = weekDayN_8;

  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: backGroundColor,
    ));

    return MainBody(date: '$monthName $dayNo . $weekdayName',weatherCondition: '$weatherCondition',place: '$place',temperature: 'Temperature $temperature°C',moisture: 'Moisture $moisture%',icon: icon,wind: 'Wind $wind km/s',statusBarColor: backGroundColor,iconSize: iconSize,iconColor: iconColor,iconPositionedTop: iconPositionedTop,iconPositionedBottom: iconPositionedBottom,iconPositionedLeft: iconPositionedLeft,iconPositionedRight: iconPositionedRight,textPositionedTop: textPositionedTop,textPositionedBottom: textPositionedBottom,textPositionedLeft: textPositionedLeft,textPositionedRight: textPositionedRight,iconAlignment: iconAlignment,lineWidth: lineWidth,searchButtonColor: iconColor,
                    date2: '$monthName2 $dayNo2 . $weekdayName2',weatherCondition2: '$weatherCondition2',place2: '$place2',temperature2: 'Temperature $temperature2°C',moisture2: 'Moisture $moisture2%',icon2: icon2,wind2: 'Wind $wind2 km/s',statusBarColor2: backGroundColor2,iconSize2: iconSize2,iconColor2: iconColor2,iconPositionedTop2: iconPositionedTop2,iconPositionedBottom2: iconPositionedBottom2,iconPositionedLeft2: iconPositionedLeft2,iconPositionedRight2: iconPositionedRight2,textPositionedTop2: textPositionedTop2,textPositionedBottom2: textPositionedBottom2,textPositionedLeft2: textPositionedLeft2,textPositionedRight2: textPositionedRight2,iconAlignment2: iconAlignment2,lineWidth2: lineWidth2,searchButtonColor2: iconColor2,
                    date3: '$monthName3 $dayNo3 . $weekdayName3',weatherCondition3: '$weatherCondition3',place3: '$place3',temperature3: 'Temperature $temperature3°C',moisture3: 'Moisture $moisture3%',icon3: icon3,wind3: 'Wind $wind3 km/s',statusBarColor3: backGroundColor3,iconSize3: iconSize3,iconColor3: iconColor3,iconPositionedTop3: iconPositionedTop3,iconPositionedBottom3: iconPositionedBottom3,iconPositionedLeft3: iconPositionedLeft3,iconPositionedRight3: iconPositionedRight3,textPositionedTop3: textPositionedTop3,textPositionedBottom3: textPositionedBottom3,textPositionedLeft3: textPositionedLeft3,textPositionedRight3: textPositionedRight3,iconAlignment3: iconAlignment3,lineWidth3: lineWidth3,searchButtonColor3: iconColor3,
                    date4: '$monthName4 $dayNo4 . $weekdayName4',weatherCondition4: '$weatherCondition4',place4: '$place4',temperature4: 'Temperature $temperature4°C',moisture4: 'Moisture $moisture4%',icon4: icon4,wind4: 'Wind $wind4 km/s',statusBarColor4: backGroundColor4,iconSize4: iconSize4,iconColor4: iconColor4,iconPositionedTop4: iconPositionedTop4,iconPositionedBottom4: iconPositionedBottom4,iconPositionedLeft4: iconPositionedLeft4,iconPositionedRight4: iconPositionedRight4,textPositionedTop4: textPositionedTop4,textPositionedBottom4: textPositionedBottom4,textPositionedLeft4: textPositionedLeft4,textPositionedRight4: textPositionedRight4,iconAlignment4: iconAlignment4,lineWidth4: lineWidth4,searchButtonColor4: iconColor4,
                    date5: '$monthName5 $dayNo5 . $weekdayName5',weatherCondition5: '$weatherCondition5',place5: '$place5',temperature5: 'Temperature $temperature5°C',moisture5: 'Moisture $moisture5%',icon5: icon5,wind5: 'Wind $wind5 km/s',statusBarColor5: backGroundColor5,iconSize5: iconSize5,iconColor5: iconColor5,iconPositionedTop5: iconPositionedTop5,iconPositionedBottom5: iconPositionedBottom5,iconPositionedLeft5: iconPositionedLeft5,iconPositionedRight5: iconPositionedRight5,textPositionedTop5: textPositionedTop5,textPositionedBottom5: textPositionedBottom5,textPositionedLeft5: textPositionedLeft5,textPositionedRight5: textPositionedRight5,iconAlignment5: iconAlignment5,lineWidth5: lineWidth5,searchButtonColor5: iconColor5,
                    date6: '$monthName6 $dayNo6 . $weekdayName6',weatherCondition6: '$weatherCondition6',place6: '$place6',temperature6: 'Temperature $temperature6°C',moisture6: 'Moisture $moisture6%',icon6: icon6,wind6: 'Wind $wind6 km/s',statusBarColor6: backGroundColor6,iconSize6: iconSize6,iconColor6: iconColor6,iconPositionedTop6: iconPositionedTop6,iconPositionedBottom6: iconPositionedBottom6,iconPositionedLeft6: iconPositionedLeft6,iconPositionedRight6: iconPositionedRight6,textPositionedTop6: textPositionedTop6,textPositionedBottom6: textPositionedBottom6,textPositionedLeft6: textPositionedLeft6,textPositionedRight6: textPositionedRight6,iconAlignment6: iconAlignment6,lineWidth6: lineWidth6,searchButtonColor6: iconColor6,
                    date7: '$monthName7 $dayNo7 . $weekdayName7',weatherCondition7: '$weatherCondition7',place7: '$place7',temperature7: 'Temperature $temperature7°C',moisture7: 'Moisture $moisture7%',icon7: icon7,wind7: 'Wind $wind7 km/s',statusBarColor7: backGroundColor7,iconSize7: iconSize7,iconColor7: iconColor7,iconPositionedTop7: iconPositionedTop7,iconPositionedBottom7: iconPositionedBottom7,iconPositionedLeft7: iconPositionedLeft7,iconPositionedRight7: iconPositionedRight7,textPositionedTop7: textPositionedTop7,textPositionedBottom7: textPositionedBottom7,textPositionedLeft7: textPositionedLeft7,textPositionedRight7: textPositionedRight7,iconAlignment7: iconAlignment7,lineWidth7: lineWidth7,searchButtonColor7: iconColor7,
                    date8: '$monthName8 $dayNo8 . $weekdayName8',weatherCondition8: '$weatherCondition8',place8: '$place8',temperature8: 'Temperature $temperature8°C',moisture8: 'Moisture $moisture8%',icon8: icon8,wind8: 'Wind $wind8 km/s',statusBarColor8: backGroundColor8,iconSize8: iconSize8,iconColor8: iconColor8,iconPositionedTop8: iconPositionedTop8,iconPositionedBottom8: iconPositionedBottom8,iconPositionedLeft8: iconPositionedLeft8,iconPositionedRight8: iconPositionedRight8,textPositionedTop8: textPositionedTop8,textPositionedBottom8: textPositionedBottom8,textPositionedLeft8: textPositionedLeft8,textPositionedRight8: textPositionedRight8,iconAlignment8: iconAlignment8,lineWidth8: lineWidth8,searchButtonColor8: iconColor8,);

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
