import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:flutter/services.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather_app/container_widget2.dart';
import 'package:weather_app/screens/loading_screen.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weather_app/Variables.dart';
import '../location.dart';
import '../summary_card.dart';
import 'home_page.dart';
import 'search_page.dart';
import 'package:weather_app/container_widget.dart';
import 'package:transformer_page_view/transformer_page_view.dart';
import 'package:weather_app/buildin_transformers.dart';

// Route createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => SearchPage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       var begin = Offset(0.0, 1.0);
//       var end = Offset.zero;
//       var curve = Curves.ease;
//
//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

class MainBody extends StatefulWidget {

  MainBody({this.date,this.place,this.weatherCondition,this.temperature,this.moisture,this.wind,this.icon,this.statusBarColor,this.iconSize,this.iconColor,this.iconPositionedTop,this.iconPositionedBottom,this.iconPositionedLeft,this.iconPositionedRight,this.textPositionedTop,this.textPositionedBottom,this.textPositionedLeft,this.textPositionedRight,this.iconAlignment,this.lineWidth,this.searchButtonColor,
            this.date2,this.place2,this.weatherCondition2,this.temperature2,this.moisture2,this.wind2,this.icon2,this.statusBarColor2,this.iconSize2,this.iconColor2,this.iconPositionedTop2,this.iconPositionedBottom2,this.iconPositionedLeft2,this.iconPositionedRight2,this.textPositionedTop2,this.textPositionedBottom2,this.textPositionedLeft2,this.textPositionedRight2,this.iconAlignment2,this.lineWidth2,this.searchButtonColor2,
            this.date3,this.place3,this.weatherCondition3,this.temperature3,this.moisture3,this.wind3,this.icon3,this.statusBarColor3,this.iconSize3,this.iconColor3,this.iconPositionedTop3,this.iconPositionedBottom3,this.iconPositionedLeft3,this.iconPositionedRight3,this.textPositionedTop3,this.textPositionedBottom3,this.textPositionedLeft3,this.textPositionedRight3,this.iconAlignment3,this.lineWidth3,this.searchButtonColor3,
            this.date4,this.place4,this.weatherCondition4,this.temperature4,this.moisture4,this.wind4,this.icon4,this.statusBarColor4,this.iconSize4,this.iconColor4,this.iconPositionedTop4,this.iconPositionedBottom4,this.iconPositionedLeft4,this.iconPositionedRight4,this.textPositionedTop4,this.textPositionedBottom4,this.textPositionedLeft4,this.textPositionedRight4,this.iconAlignment4,this.lineWidth4,this.searchButtonColor4,
            this.date5,this.place5,this.weatherCondition5,this.temperature5,this.moisture5,this.wind5,this.icon5,this.statusBarColor5,this.iconSize5,this.iconColor5,this.iconPositionedTop5,this.iconPositionedBottom5,this.iconPositionedLeft5,this.iconPositionedRight5,this.textPositionedTop5,this.textPositionedBottom5,this.textPositionedLeft5,this.textPositionedRight5,this.iconAlignment5,this.lineWidth5,this.searchButtonColor5,
            this.date6,this.place6,this.weatherCondition6,this.temperature6,this.moisture6,this.wind6,this.icon6,this.statusBarColor6,this.iconSize6,this.iconColor6,this.iconPositionedTop6,this.iconPositionedBottom6,this.iconPositionedLeft6,this.iconPositionedRight6,this.textPositionedTop6,this.textPositionedBottom6,this.textPositionedLeft6,this.textPositionedRight6,this.iconAlignment6,this.lineWidth6,this.searchButtonColor6,
            this.date7,this.place7,this.weatherCondition7,this.temperature7,this.moisture7,this.wind7,this.icon7,this.statusBarColor7,this.iconSize7,this.iconColor7,this.iconPositionedTop7,this.iconPositionedBottom7,this.iconPositionedLeft7,this.iconPositionedRight7,this.textPositionedTop7,this.textPositionedBottom7,this.textPositionedLeft7,this.textPositionedRight7,this.iconAlignment7,this.lineWidth7,this.searchButtonColor7,
            this.date8,this.place8,this.weatherCondition8,this.temperature8,this.moisture8,this.wind8,this.icon8,this.statusBarColor8,this.iconSize8,this.iconColor8,this.iconPositionedTop8,this.iconPositionedBottom8,this.iconPositionedLeft8,this.iconPositionedRight8,this.textPositionedTop8,this.textPositionedBottom8,this.textPositionedLeft8,this.textPositionedRight8,this.iconAlignment8,this.lineWidth8,this.searchButtonColor8,});

  final Color statusBarColor,statusBarColor2,statusBarColor3,statusBarColor4,statusBarColor5,statusBarColor6,statusBarColor7,statusBarColor8;
  final String date,date2,date3,date4,date5,date6,date7,date8;
  final String place,place2,place3,place4,place5,place6,place7,place8;
  final String weatherCondition,weatherCondition2,weatherCondition3,weatherCondition4,weatherCondition5,weatherCondition6,weatherCondition7,weatherCondition8;
  final String temperature,temperature2,temperature3,temperature4,temperature5,temperature6,temperature7,temperature8;
  final String moisture,moisture2,moisture3,moisture4,moisture5,moisture6,moisture7,moisture8;
  final String wind,wind2,wind3,wind4,wind5,wind6,wind7,wind8;
  final IconData icon,icon2,icon3,icon4,icon5,icon6,icon7,icon8;
  final double iconSize,iconSize2,iconSize3,iconSize4,iconSize5,iconSize6,iconSize7,iconSize8;
  final Color iconColor,iconColor2,iconColor3,iconColor4,iconColor5,iconColor6,iconColor7,iconColor8;
  final double iconPositionedTop,iconPositionedTop2,iconPositionedTop3,iconPositionedTop4,iconPositionedTop5,iconPositionedTop6,iconPositionedTop7,iconPositionedTop8;
  final double iconPositionedBottom,iconPositionedBottom2,iconPositionedBottom3,iconPositionedBottom4,iconPositionedBottom5,iconPositionedBottom6,iconPositionedBottom7,iconPositionedBottom8;
  final double iconPositionedLeft,iconPositionedLeft2,iconPositionedLeft3,iconPositionedLeft4,iconPositionedLeft5,iconPositionedLeft6,iconPositionedLeft7,iconPositionedLeft8;
  final double iconPositionedRight,iconPositionedRight2,iconPositionedRight3,iconPositionedRight4,iconPositionedRight5,iconPositionedRight6,iconPositionedRight7,iconPositionedRight8;
  final double textPositionedTop,textPositionedTop2,textPositionedTop3,textPositionedTop4,textPositionedTop5,textPositionedTop6,textPositionedTop7,textPositionedTop8;
  final double textPositionedBottom,textPositionedBottom2,textPositionedBottom3,textPositionedBottom4,textPositionedBottom5,textPositionedBottom6,textPositionedBottom7,textPositionedBottom8;
  final double textPositionedLeft,textPositionedLeft2,textPositionedLeft3,textPositionedLeft4,textPositionedLeft5,textPositionedLeft6,textPositionedLeft7,textPositionedLeft8;
  final double textPositionedRight,textPositionedRight2,textPositionedRight3,textPositionedRight4,textPositionedRight5,textPositionedRight6,textPositionedRight7,textPositionedRight8;
  final AlignmentDirectional iconAlignment,iconAlignment2,iconAlignment3,iconAlignment4,iconAlignment5,iconAlignment6,iconAlignment7,iconAlignment8;
  final double lineWidth,lineWidth2,lineWidth3,lineWidth4,lineWidth5,lineWidth6,lineWidth7,lineWidth8;
  final Color searchButtonColor,searchButtonColor2,searchButtonColor3,searchButtonColor4,searchButtonColor5,searchButtonColor6,searchButtonColor7,searchButtonColor8;

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

    TransformerPageController transformerPageController = TransformerPageController(initialPage: 0,itemCount: 9);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll){
            overScroll.disallowGlow();
            return;
          },
          child: TransformerPageView(
            scrollDirection: Axis.horizontal,
            transformer: new ZoomOutPageTransformer(),
            itemCount: 9,
            pageController: transformerPageController,
            itemBuilder: (context, index) {
              if (index == 0) {
                return ContainerWidget(statusBarColor: widget.statusBarColor,date: widget.date,place: widget.place,weatherCondition: widget.weatherCondition,temperature: widget.temperature,moisture: widget.moisture,wind: widget.wind,icon: widget.icon,iconSize: widget.iconSize,iconColor: widget.iconColor,iconPositionedTop: widget.iconPositionedTop,iconPositionedBottom: widget.iconPositionedBottom,iconPositionedLeft: widget.iconPositionedLeft,iconPositionedRight: widget.iconPositionedRight, textPositionedTop: widget.textPositionedTop,textPositionedBottom: widget.textPositionedBottom,textPositionedLeft: widget.textPositionedLeft,textPositionedRight: widget.textPositionedRight,iconAlignment: widget.iconAlignment,lineWidth: widget.lineWidth,searchButtonColor: widget.searchButtonColor);
              }
              else if (index == 1) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF42275a),Color(0xFF734b6d)]
                      //Color(0xFF42275a),Color(0xFF734b6d) yes
                      //Color(0xFF4568dc),Color(0xFFb06ab3) no
                      //Color(0xFF7b4397),Color(0xFFdc2430) no
                      //Color(0xFF43cea2),Color(0xFF185a9d) no
                      //Color(0xFFffd89b),Color(0xFF19547b) no
                      //Color(0xFFbdc3c7),Color(0xFF2c3e50) no
                      //Color(0xFFc33764),Color(0xFF1d2671) no
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: allHeight*0.1, bottom: allHeight*0.03),
                        child: Text("Next 7 Days",style: TextStyle(fontSize: allWidth*0.06, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')),
                      ),
                      Column(
                        children: [
                          SummaryCard(cardColor: widget.statusBarColor, cardDate: widget.date, cardIcon: widget.icon, cardTemperature: widget.temperature),
                          SummaryCard(cardColor: widget.statusBarColor2, cardDate: widget.date2, cardIcon: widget.icon2, cardTemperature: widget.temperature2),
                          SummaryCard(cardColor: widget.statusBarColor3, cardDate: widget.date3, cardIcon: widget.icon3, cardTemperature: widget.temperature3),
                          SummaryCard(cardColor: widget.statusBarColor4, cardDate: widget.date4, cardIcon: widget.icon4, cardTemperature: widget.temperature4),
                          SummaryCard(cardColor: widget.statusBarColor5, cardDate: widget.date5, cardIcon: widget.icon5, cardTemperature: widget.temperature5),
                          SummaryCard(cardColor: widget.statusBarColor6, cardDate: widget.date6, cardIcon: widget.icon6, cardTemperature: widget.temperature6),
                          SummaryCard(cardColor: widget.statusBarColor7, cardDate: widget.date7, cardIcon: widget.icon7, cardTemperature: widget.temperature7),
                        ],
                      ),
                    ],
                  ),
                );
              }
              else if (index == 2) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ContainerWidget2(statusBarColor: widget.statusBarColor2,date: widget.date2,place: widget.place2,weatherCondition: widget.weatherCondition2,temperature: widget.temperature2,moisture: widget.moisture2,wind: widget.wind2,icon: widget.icon2,iconSize: widget.iconSize2,iconColor: widget.iconColor2,iconPositionedTop: widget.iconPositionedTop2,iconPositionedBottom: widget.iconPositionedBottom2,iconPositionedLeft: widget.iconPositionedLeft2,iconPositionedRight: widget.iconPositionedRight2, textPositionedTop: widget.textPositionedTop2,textPositionedBottom: widget.textPositionedBottom2,textPositionedLeft: widget.textPositionedLeft2,textPositionedRight: widget.textPositionedRight2,iconAlignment: widget.iconAlignment2,lineWidth: widget.lineWidth2,searchButtonColor: widget.searchButtonColor2),
                    Padding(
                      padding: EdgeInsets.only(bottom: allHeight*0.05),
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: FloatingActionButton.extended(
                          elevation: 2,
                          icon: Icon(
                            CupertinoIcons.back,color: Colors.white,),
                          label: Text("Today",style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: allWidth*0.037),),
                          backgroundColor: widget.searchButtonColor2,
                          onPressed: (){
                            transformerPageController.animateToPage(0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInCirc,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
              else if (index == 3) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ContainerWidget2(statusBarColor: widget.statusBarColor3,date: widget.date3,place: widget.place3,weatherCondition: widget.weatherCondition3,temperature: widget.temperature3,moisture: widget.moisture3,wind: widget.wind3,icon: widget.icon3,iconSize: widget.iconSize3,iconColor: widget.iconColor3,iconPositionedTop: widget.iconPositionedTop3,iconPositionedBottom: widget.iconPositionedBottom3,iconPositionedLeft: widget.iconPositionedLeft3,iconPositionedRight: widget.iconPositionedRight3, textPositionedTop: widget.textPositionedTop3,textPositionedBottom: widget.textPositionedBottom3,textPositionedLeft: widget.textPositionedLeft3,textPositionedRight: widget.textPositionedRight3,iconAlignment: widget.iconAlignment3,lineWidth: widget.lineWidth3,searchButtonColor: widget.searchButtonColor3),
                    Padding(
                      padding: EdgeInsets.only(bottom: allHeight*0.05),
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: FloatingActionButton.extended(
                          elevation: 2,
                          icon: Icon(
                            CupertinoIcons.back,color: Colors.white,),
                          label: Text("Today",style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: allWidth*0.037),),
                          backgroundColor: widget.searchButtonColor3,
                          onPressed: (){
                            transformerPageController.animateToPage(0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInCirc,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
              else if (index == 4) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ContainerWidget2(statusBarColor: widget.statusBarColor4,date: widget.date4,place: widget.place4,weatherCondition: widget.weatherCondition4,temperature: widget.temperature4,moisture: widget.moisture4,wind: widget.wind4,icon: widget.icon4,iconSize: widget.iconSize4,iconColor: widget.iconColor4,iconPositionedTop: widget.iconPositionedTop4,iconPositionedBottom: widget.iconPositionedBottom4,iconPositionedLeft: widget.iconPositionedLeft4,iconPositionedRight: widget.iconPositionedRight4, textPositionedTop: widget.textPositionedTop4,textPositionedBottom: widget.textPositionedBottom4,textPositionedLeft: widget.textPositionedLeft4,textPositionedRight: widget.textPositionedRight4,iconAlignment: widget.iconAlignment4,lineWidth: widget.lineWidth4,searchButtonColor: widget.searchButtonColor4),
                    Padding(
                      padding: EdgeInsets.only(bottom: allHeight*0.05),
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: FloatingActionButton.extended(
                          elevation: 2,
                          icon: Icon(
                            CupertinoIcons.back,color: Colors.white,),
                          label: Text("Today",style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: allWidth*0.037),),
                          backgroundColor: widget.searchButtonColor4,
                          onPressed: (){
                            transformerPageController.animateToPage(0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInCirc,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
              else if (index == 5) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ContainerWidget2(statusBarColor: widget.statusBarColor5,date: widget.date5,place: widget.place5,weatherCondition: widget.weatherCondition5,temperature: widget.temperature5,moisture: widget.moisture5,wind: widget.wind5,icon: widget.icon5,iconSize: widget.iconSize5,iconColor: widget.iconColor5,iconPositionedTop: widget.iconPositionedTop5,iconPositionedBottom: widget.iconPositionedBottom5,iconPositionedLeft: widget.iconPositionedLeft5,iconPositionedRight: widget.iconPositionedRight5, textPositionedTop: widget.textPositionedTop5,textPositionedBottom: widget.textPositionedBottom5,textPositionedLeft: widget.textPositionedLeft5,textPositionedRight: widget.textPositionedRight5,iconAlignment: widget.iconAlignment5,lineWidth: widget.lineWidth5,searchButtonColor: widget.searchButtonColor5),
                    Padding(
                      padding: EdgeInsets.only(bottom: allHeight*0.05),
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: FloatingActionButton.extended(
                          elevation: 2,
                          icon: Icon(
                            CupertinoIcons.back,color: Colors.white,),
                          label: Text("Today",style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: allWidth*0.037),),
                          backgroundColor: widget.searchButtonColor5,
                          onPressed: (){
                            transformerPageController.animateToPage(0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInCirc,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
              else if (index == 6) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ContainerWidget2(statusBarColor: widget.statusBarColor6,date: widget.date6,place: widget.place6,weatherCondition: widget.weatherCondition6,temperature: widget.temperature6,moisture: widget.moisture6,wind: widget.wind6,icon: widget.icon6,iconSize: widget.iconSize6,iconColor: widget.iconColor6,iconPositionedTop: widget.iconPositionedTop6,iconPositionedBottom: widget.iconPositionedBottom6,iconPositionedLeft: widget.iconPositionedLeft6,iconPositionedRight: widget.iconPositionedRight6, textPositionedTop: widget.textPositionedTop6,textPositionedBottom: widget.textPositionedBottom6,textPositionedLeft: widget.textPositionedLeft6,textPositionedRight: widget.textPositionedRight6,iconAlignment: widget.iconAlignment6,lineWidth: widget.lineWidth6,searchButtonColor: widget.searchButtonColor6),
                    Padding(
                      padding: EdgeInsets.only(bottom: allHeight*0.05),
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: FloatingActionButton.extended(
                          elevation: 2,
                          icon: Icon(
                            CupertinoIcons.back,color: Colors.white,),
                          label: Text("Today",style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: allWidth*0.037),),
                          backgroundColor: widget.searchButtonColor6,
                          onPressed: (){
                            transformerPageController.animateToPage(0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInCirc,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
              else if (index == 7) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ContainerWidget2(statusBarColor: widget.statusBarColor7,date: widget.date7,place: widget.place7,weatherCondition: widget.weatherCondition7,temperature: widget.temperature7,moisture: widget.moisture7,wind: widget.wind7,icon: widget.icon7,iconSize: widget.iconSize7,iconColor: widget.iconColor7,iconPositionedTop: widget.iconPositionedTop7,iconPositionedBottom: widget.iconPositionedBottom7,iconPositionedLeft: widget.iconPositionedLeft7,iconPositionedRight: widget.iconPositionedRight7, textPositionedTop: widget.textPositionedTop7,textPositionedBottom: widget.textPositionedBottom7,textPositionedLeft: widget.textPositionedLeft7,textPositionedRight: widget.textPositionedRight7,iconAlignment: widget.iconAlignment7,lineWidth: widget.lineWidth7,searchButtonColor: widget.searchButtonColor7),
                    Padding(
                      padding: EdgeInsets.only(bottom: allHeight*0.05),
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: FloatingActionButton.extended(
                          elevation: 2,
                          icon: Icon(
                            CupertinoIcons.back,color: Colors.white,),
                          label: Text("Today",style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: allWidth*0.037),),
                          backgroundColor: widget.searchButtonColor7,
                          onPressed: (){
                            transformerPageController.animateToPage(0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInCirc,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
              else {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ContainerWidget2(statusBarColor: widget.statusBarColor8,date: widget.date8,place: widget.place8,weatherCondition: widget.weatherCondition8,temperature: widget.temperature8,moisture: widget.moisture8,wind: widget.wind8,icon: widget.icon8,iconSize: widget.iconSize8,iconColor: widget.iconColor8,iconPositionedTop: widget.iconPositionedTop8,iconPositionedBottom: widget.iconPositionedBottom8,iconPositionedLeft: widget.iconPositionedLeft8,iconPositionedRight: widget.iconPositionedRight8, textPositionedTop: widget.textPositionedTop8,textPositionedBottom: widget.textPositionedBottom8,textPositionedLeft: widget.textPositionedLeft8,textPositionedRight: widget.textPositionedRight8,iconAlignment: widget.iconAlignment8,lineWidth: widget.lineWidth8,searchButtonColor: widget.searchButtonColor8),
                    Padding(
                      padding: EdgeInsets.only(bottom: allHeight*0.05),
                      child: Container(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: FloatingActionButton.extended(
                          elevation: 2,
                          icon: Icon(
                            CupertinoIcons.back,color: Colors.white,),
                          label: Text("Today",style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: allWidth*0.037),),
                          backgroundColor: widget.searchButtonColor8,
                          onPressed: (){
                            transformerPageController.animateToPage(0,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeInCirc,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
            }
          ),
        ),
      ),
    );
  }
}




//ContainerWidget(statusBarColor: widget.statusBarColor,date: widget.date,place: widget.place,weatherCondition: widget.weatherCondition,temperature: widget.temperature,moisture: widget.moisture,wind: widget.wind,icon: widget.icon,iconSize: widget.iconSize,iconColor: widget.iconColor,iconPositionedTop: widget.iconPositionedTop,iconPositionedBottom: widget.iconPositionedBottom,iconPositionedLeft: widget.iconPositionedLeft,iconPositionedRight: widget.iconPositionedRight, textPositionedTop: widget.textPositionedTop,textPositionedBottom: widget.textPositionedBottom,textPositionedLeft: widget.textPositionedLeft,textPositionedRight: widget.textPositionedRight,iconAlignment: widget.iconAlignment,lineWidth: widget.lineWidth,searchButtonColor: widget.searchButtonColor),
//ContainerWidget2(statusBarColor: widget.statusBarColor2,date: widget.date2,place: widget.place2,weatherCondition: widget.weatherCondition2,temperature: widget.temperature2,moisture: widget.moisture2,wind: widget.wind2,icon: widget.icon2,iconSize: widget.iconSize2,iconColor: widget.iconColor2,iconPositionedTop: widget.iconPositionedTop2,iconPositionedBottom: widget.iconPositionedBottom2,iconPositionedLeft: widget.iconPositionedLeft2,iconPositionedRight: widget.iconPositionedRight2, textPositionedTop: widget.textPositionedTop2,textPositionedBottom: widget.textPositionedBottom2,textPositionedLeft: widget.textPositionedLeft2,textPositionedRight: widget.textPositionedRight2,iconAlignment: widget.iconAlignment2,lineWidth: widget.lineWidth2,searchButtonColor: widget.searchButtonColor2)





// Container(
//   height: allHeight,
//   width: allWidth,
//   color: widget.statusBarColor,
//   child: Column(
//     children: <Widget>[
//       //First Entry
//       Row(
//         children: <Widget>[
//           Stack(
//             children: <Widget>[
//               Container(
//                 height: height*0.24,
//                 width: width*0.4,
//               ),
//               //Date and Place
//               Positioned(
//                 top: height*0.065,
//                 left: width*0.05,
//                 child: Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(widget.date, style: TextStyle(fontSize: width*0.06, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
//                       Padding(
//                         padding: EdgeInsets.only(right: width*0.34),
//                         child: Text(widget.place, style: TextStyle(fontSize: width*0.06, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               //Weather
//               Positioned(
//                 right: -width*0.568,
//                 top: height*0.135,
//                 child: Container(
//                   child: RotatedBox(
//                     quarterTurns: 1,
//                     child: Text(
//                       widget.weatherCondition, style: TextStyle(fontSize: height*0.04, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', ), textDirection: TextDirection.ltr,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//             overflow: Overflow.visible,
//           ),
//         ],
//       ),
//       //Middle Entry
//       Stack(
//         alignment: AlignmentDirectional.bottomStart,
//         children: <Widget>[
//           Container(
//             height: height*0.36,
//             width: width*0.82,
//           ),
//           //Icon
//           Positioned(
//             top: widget.iconPositionedTop,
//             bottom: widget.iconPositionedBottom,
//             left: widget.iconPositionedLeft,
//             right: widget.iconPositionedRight,
//             child: Container(
//               alignment: widget.iconAlignment,
//               child: Container(
//                 child: IconShadowWidget(
//                   Icon(
//                     widget.icon, size: widget.iconSize, color: widget.iconColor,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           //Word
//           Positioned(
//             top: widget.textPositionedTop,
//             bottom: widget.textPositionedBottom,
//             left: widget.textPositionedLeft,
//             right: widget.textPositionedRight,
//             child: Container(
//               child: Text(
//                 widget.weatherCondition.toUpperCase(), style: TextStyle(fontSize: height*0.045, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa', ),
//               ),
//             ),
//           ),
//           //Line
//           Positioned(
//             top: height*0.13,
//             right: -height*0.065,
//             child: Container(
//               color: Colors.white,
//               height: height*0.0024,
//               width: width*widget.lineWidth,
//             ),
//           ),
//         ],
//         overflow: Overflow.visible,
//       ),
//       Divider(
//         color: Colors.white, thickness: height*0.001, indent: height*0.02, height: height*0.08,
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.only(right: width*0.2),
//             child: Text(widget.temperature, style: TextStyle(fontSize: height*0.035, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
//           ),
//           Padding(
//             padding: EdgeInsets.only(right: width*0.2, top: height*0.007, bottom: height*0.007),
//             child: Text(widget.moisture, style: TextStyle(fontSize: height*0.035, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
//           ),
//           Padding(
//             padding: EdgeInsets.only(right: width*0.2),
//             child: Text(widget.wind, style: TextStyle(fontSize: height*0.035, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
//           ),
//         ],
//       ),
//       //Search button
//       Padding(
//         padding: EdgeInsets.only(top: height*0.02),
//         child: FloatingActionButton.extended(
//           heroTag: 'search_icon',
//           elevation: 2,
//           icon: Icon(
//             CupertinoIcons.search,color: Colors.white,),
//           label: Text("Search City",style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: width*0.037),),
//           backgroundColor: widget.searchButtonColor,
//           onPressed: (){
//
//             Navigator.of(context).push(_createRoute());
//
//           },
//         ),
//
//       ),
//     ],
//   ),
// ),


