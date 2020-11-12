import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:flutter/services.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weather_app/Variables.dart';
import '../location.dart';
import 'home_page.dart';

class MainBody extends StatefulWidget {

  MainBody({this.date,this.place,this.weatherCondition,this.temperature,this.moisture,this.wind,this.icon,this.statusBarColor,this.iconSize,this.iconColor,this.iconPositionedTop,this.iconPositionedBottom,this.iconPositionedLeft,this.iconPositionedRight,this.textPositionedTop,this.textPositionedBottom,this.textPositionedLeft,this.textPositionedRight,this.iconAlignment,this.lineWidth});

  final Color statusBarColor ;
  final String date ;
  final String place  ;
  final String weatherCondition ;
  final String temperature;
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

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: widget.statusBarColor,
    ));
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: widget.statusBarColor,
            child: Column(
              children: <Widget>[
                //First Entry
                Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: height*0.24,
                          width: width*0.4,
                        ),
                        //Date and Place
                        Positioned(
                          top: height*0.03,
                          left: width*0.05,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(widget.date, style: TextStyle(fontSize: width*0.06, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                                Padding(
                                  padding: EdgeInsets.only(right: width*0.34),
                                  child: Text(widget.place, style: TextStyle(fontSize: width*0.06, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Weather
                        Positioned(
                          right: -width*0.568,
                          top: height*0.1,
                          child: Container(
                            child: RotatedBox(
                              quarterTurns: 1,
                              child: Text(
                                widget.weatherCondition, style: TextStyle(fontSize: height*0.04, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', ), textDirection: TextDirection.ltr,
                              ),
                            ),
                          ),
                        ),
                      ],
                      overflow: Overflow.visible,
                    ),
                  ],
                ),
                //Middle Entry
                Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: <Widget>[
                    Container(
                      height: height*0.36,
                      width: width*0.82,
                    ),
                    //Icon
                    Positioned(
                      top: widget.iconPositionedTop,
                      bottom: widget.iconPositionedBottom,
                      left: widget.iconPositionedLeft,
                      right: widget.iconPositionedRight,
                      child: Container(
                        alignment: widget.iconAlignment,
                        child: Container(
                          child: IconShadowWidget(
                            Icon(
                              widget.icon, size: widget.iconSize, color: widget.iconColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //Word
                    Positioned(
                      top: widget.textPositionedTop,
                      bottom: widget.textPositionedBottom,
                      left: widget.textPositionedLeft,
                      right: widget.textPositionedRight,
                      child: Container(
                        child: Text(
                          widget.weatherCondition.toUpperCase(), style: TextStyle(fontSize: height*0.045, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', ),
                        ),
                      ),
                    ),
                    //Line
                    Positioned(
                      top: height*0.13,
                      right: -height*0.065,
                      child: Container(
                        color: Colors.white,
                        height: height*0.0024,
                        width: width*widget.lineWidth,
                      ),
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
                Divider(
                  color: Colors.white, thickness: height*0.001, indent: height*0.02, height: height*0.08,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: width*0.2),
                      child: Text(widget.temperature, style: TextStyle(fontSize: height*0.035, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width*0.2, top: height*0.007, bottom: height*0.007),
                      child: Text(widget.moisture, style: TextStyle(fontSize: height*0.035, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width*0.2),
                      child: Text(widget.wind, style: TextStyle(fontSize: height*0.035, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                    ),
                  ],
                ),
                FloatingActionButton.extended(
                  elevation: 2,
                  icon: Icon(CupertinoIcons.search),
                  label: Text("Search City"),
                  backgroundColor: Colors.white,
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}

