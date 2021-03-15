import 'package:flutter/material.dart';
import 'package:weather_app/screens/main_body.dart';
import 'package:flutter/cupertino.dart';

//Colors
Color clearPink = Color(0xFFFFCACA);
Color clearIcon = Color(0xFFFF753D);
Color cloudyGreen = Color(0xFF06805E);
Color cloudyIcon = Color(0xFFFF99AA);
Color rainyBlue = Color(0xFF008889);
Color rainyIcon = Color(0xFFA1E2EA);
Color snowyBlack = Color(0xFF5C5D5B);
Color snowyIcon = Color(0xFFEC7E74);
Color foggyTan = Color(0xFFDFB891);
Color foggyIcon = Color(0xFF1D817F);
Color stormyGreen = Color(0xFF5CDB94);
Color stormyIcon = Color(0xFF05396B);
Color drizzlePurple = Color(0xFFABA5BF);
Color drizzleIcon = Color(0xFF583E2F);

//Icon Sizes
int clearIconSize = 400;
int cloudyIconSize = 380;

//Variables
var statusBarColor = clearPink;

const apiKey = 'ac8fd06439a8c2fa55bc9cdda377675b';
const apiKey2 = '1851339ee4961ffd55df1886d56761fa';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your desired city.',

  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.all(Radius.circular(30))
  ),

  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.all(Radius.circular(30))
  ),

  prefixIcon: Icon(CupertinoIcons.search,color: Colors.white,),

  filled: true,
  fillColor: Colors.black26,

);



















