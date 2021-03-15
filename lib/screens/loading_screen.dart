import 'package:flutter/material.dart';
import 'package:weather_app/location.dart';
import 'package:weather_app/screens/home_page.dart';
import 'package:weather_app/service/networking.dart';
import 'package:weather_app/Variables.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

var allHeight;
var allWidth;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');
    NetworkHelper networkHelper2 = NetworkHelper('https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitude&appid=$apiKey2&units=metric');

    var weatherData = await networkHelper.getData();
    var daysWeatherData = await networkHelper2.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return HomePage(locationWeather: weatherData, daysWeather: daysWeatherData,);
    }));

  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    allHeight = height;
    allWidth = width;

    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}

