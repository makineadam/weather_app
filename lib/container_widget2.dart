import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:weather_app/screens/loading_screen.dart';

class ContainerWidget2 extends StatelessWidget {

  ContainerWidget2({@required this.date,@required this.place,@required this.weatherCondition,@required this.temperature,@required this.moisture,@required this.wind,
    @required this.icon,@required this.statusBarColor,@required this.iconSize,@required this.iconColor,@required this.iconPositionedTop,@required this.iconPositionedBottom,
    @required this.iconPositionedLeft,@required this.iconPositionedRight,@required this.textPositionedTop,@required this.textPositionedBottom,@required this.textPositionedLeft,
    @required this.textPositionedRight,@required this.iconAlignment,@required this.lineWidth,@required this.searchButtonColor,@required this.maxTemp,@required this.minTemp,});

  final Color statusBarColor;
  final String date;
  final String place;
  final String weatherCondition;
  final String temperature;
  final String maxTemp;
  final String minTemp;
  final String moisture;
  final String wind;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final double iconPositionedTop;
  final double iconPositionedBottom;
  final double iconPositionedLeft;
  final double iconPositionedRight;
  final double textPositionedTop;
  final double textPositionedBottom;
  final double textPositionedLeft;
  final double textPositionedRight;
  final AlignmentDirectional iconAlignment;
  final double lineWidth;
  final Color searchButtonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: allHeight,
      width: allWidth,
      color: statusBarColor,
      child: Column(
        children: <Widget>[
          //First Entry
          Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: allHeight*0.24,
                    width: allWidth*0.4,
                  ),
                  //Date and Place
                  Positioned(
                    top: allHeight*0.065,
                    left: allWidth*0.05,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(date, style: TextStyle(fontSize: allWidth*0.06, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                        Padding(
                          padding: EdgeInsets.only(right: allWidth*0.34),
                          child: Text(place, style: TextStyle(fontSize: allWidth*0.06, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                        ),
                      ],
                    ),
                  ),
                  //Weather
                  Positioned(
                    right: -allWidth*0.568,
                    top: allHeight*0.135,
                    child: Container(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          weatherCondition, style: TextStyle(fontSize: allHeight*0.04, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', ), textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                  ),
                ],
                clipBehavior: Clip.none,
              ),
            ],
          ),
          //Middle Entry
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: <Widget>[
              Container(
                height: allHeight*0.36,
                width: allWidth*0.82,
              ),
              //Icon
              Positioned(
                top: iconPositionedTop,
                bottom: iconPositionedBottom,
                left: iconPositionedLeft,
                right: iconPositionedRight,
                child: Container(
                  alignment: iconAlignment,
                  child: Container(
                    child: IconShadowWidget(
                      Icon(
                        icon, size: iconSize, color: iconColor,
                      ),
                    ),
                  ),
                ),
              ),
              //Word
              Positioned(
                top: textPositionedTop,
                bottom: textPositionedBottom,
                left: textPositionedLeft,
                right: textPositionedRight,
                child: Container(
                  child: Text(
                    weatherCondition.toUpperCase(), style: TextStyle(fontSize: allHeight*0.045, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', ),
                  ),
                ),
              ),
              //Line
              Positioned(
                top: allHeight*0.13,
                right: -allHeight*0.065,
                child: Container(
                  color: Colors.white,
                  height: allHeight*0.0024,
                  width: allWidth*lineWidth,
                ),
              ),
            ],
            clipBehavior: Clip.none,
          ),
          Divider(
            color: Colors.white, thickness: allHeight*0.001, indent: allHeight*0.02, height: allHeight*0.08,
          ),
          Padding(
            padding: EdgeInsets.only(left: allWidth*0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Day $temperature', style: TextStyle(fontSize: allHeight*0.03, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                Padding(
                  padding: EdgeInsets.only(top: allWidth*0.005),
                  child: Row(
                    children: [
                      Text('Max: $maxTemp', style: TextStyle(fontSize: allHeight*0.03, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                      Padding(
                        padding: EdgeInsets.only(left: allWidth*0.05),
                        child: Text('Min: $minTemp', style: TextStyle(fontSize: allHeight*0.03, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: allHeight*0.01),
                  child: Text(moisture, style: TextStyle(fontSize: allHeight*0.03, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                ),
                Text(wind, style: TextStyle(fontSize: allHeight*0.03, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
