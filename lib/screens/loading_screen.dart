import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tempo_template/services/weather.dart';
import 'location_screen.dart';
import 'package:tempo_template/services/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Location location = Location();
  late double latitude;
  late double longitude;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitDoubleBounce(
        color: Colors.white,
        size: 100.0,
      ),
    );
  }

  void getData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    pushToLocationScreen(weatherData);
  }

  void pushToLocationScreen(dynamic weatherData) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(localWeatherData: weatherData);
    }));
  }
}