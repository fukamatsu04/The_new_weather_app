import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/main_screen.dart';

// ignore: use_key_in_widget_constructors
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreen createState() => _LoadingScreen();
}

class _LoadingScreen extends State<LoadingScreen> {
  void initState() {
    super.initState();
    requestPermission();
    getLocationData();
  }

  void requestPermission() async {
    LocationPermission permission = await Geolocator.requestPermission();
  }

  void getLocationData() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Main_screen(
        locationWeather: position,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SpinKitPulse(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
