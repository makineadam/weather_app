// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_google_places/flutter_google_places.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_webservice/places.dart';
// import 'loading_screen.dart';
// import 'package:flutter/services.dart';
// import 'package:weather_app/Variables.dart';
// import 'loading_screen.dart';
// import 'package:geocoder/geocoder.dart';
//
// GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: "AIzaSyCJMmbMpg-buetMsRlJJAF10T3rCpxn2sI");
//
// class SearchPage extends StatefulWidget {
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }
//
// class _SearchPageState extends State<SearchPage> {
//   @override
//   Widget build(BuildContext context) {
//
//     Future<Null> displayPrediction(Prediction p) async {
//       if (p != null) {
//         PlacesDetailsResponse detail =
//         await _places.getDetailsByPlaceId(p.placeId);
//
//         var placeId = p.placeId;
//         double lat = detail.result.geometry.location.lat;
//         double lng = detail.result.geometry.location.lng;
//
//         var address = await Geocoder.local.findAddressesFromQuery(p.description);
//
//         print(lat);
//         print(lng);
//       }
//     }
//
//
//     String cityName = "";
//
//     return MaterialApp(
//       theme: ThemeData.dark(),
//       home: Scaffold(
//         resizeToAvoidBottomInset: false,//bottompadding
//         backgroundColor: Color(0xFF0F2027),
//         body: SafeArea(
//           child: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [Color(0xFF0F2027), Color(0xFF203A43),Color(0xFF2C5364),]),
//               ),
//             child: Column(
//               children: <Widget>[
//                 Stack(
//                   clipBehavior: Clip.none,
//                   children: <Widget>[
//                     Container(
//                       height: allHeight*0.95,
//                       width: allWidth,
//                     ),
//                     //Search bar
//                     Padding(
//                       padding: EdgeInsets.only(left: allWidth*0.035,right: allWidth*0.035,top: allHeight*0.03),
//                       child: TextField(
//                         onTap: () async{
//                           Prediction p = await PlacesAutocomplete.show(context: context, apiKey: "AIzaSyCrgu7G0eLCyGQguT10S-fwmC4VZ-BHAxc");
//                           displayPrediction(p);
//                         },
//
//                           decoration: kTextFieldDecoration,
//                           onSubmitted: (String city){
//                             setState(() {
//                               cityName = city;
//                             });
//                           }
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             ),
//           ),
//         ),
//
//     );
//   }
// }
//
//
