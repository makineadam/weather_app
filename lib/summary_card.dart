import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/screens/loading_screen.dart';

class SummaryCard extends StatelessWidget {

  SummaryCard({@required this.cardColor,@required this.cardDate,@required this.cardIcon,@required this.cardTemperature,@required this.cardIconColor});

  final Color cardColor;
  final String cardDate;
  final IconData cardIcon;
  final String cardTemperature;
  final Color cardIconColor;

  @override
  Widget build(BuildContext context) {

    var dayList = cardDate.split('.');
    dayList[0] = dayList[0].trim();
    dayList[1] = dayList[1].trim();

    var tempList = cardTemperature.split(' ');
    tempList[1] = tempList[1].trim();

    var tempList2 = tempList[1].split('°');
    tempList2[0] = tempList2[0].trim();

    var tempDouble = double.parse(tempList2[0]);
    var tempInt = tempDouble.toInt();
    String sumTemp = tempInt.toString();

    return Padding(
      padding: EdgeInsets.only(bottom: allHeight*0.03),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: allHeight*0.07,
          width: allWidth*0.8,
          decoration: BoxDecoration(color: cardColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: allWidth*0.02),
                child: Container(
                  width: allWidth*0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(dayList[1], style: TextStyle(fontSize: allWidth*0.05, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')),
                      Text(dayList[0], style: TextStyle(fontSize: allWidth*0.03, fontWeight: FontWeight.normal, fontFamily: 'Comfortaa'))
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: allWidth*0.02,right: allWidth*0.02),
                child: Container(
                    width: allWidth*0.11,
                    child: Text('$sumTemp°C', style: TextStyle(fontSize: allWidth*0.04, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'))),
              ),

              Icon(cardIcon, size: allHeight*0.04,color: cardIconColor),

              Padding(
                padding: EdgeInsets.only(left: allWidth*0.1),
                child: Icon(FontAwesomeIcons.chevronRight,size: allWidth*0.06,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}