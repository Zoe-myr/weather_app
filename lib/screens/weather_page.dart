import 'dart:io';

import 'package:flutter/material.dart';
import 'package:weather_1/models/weather_model.dart';

class WeatherPage extends StatefulWidget {
  WeatherPage({required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  late String cityNameState;
  late String conditionsState;
  late int temperatureState;
  late int feelsLikeState;
  late int humidityState;
  late int windSpeedState;
  late int windGustState;

  @override
  void initState(){
    super.initState();
    setState(() {
      cityNameState = widget.weatherModel.getCityName();
      conditionsState = widget.weatherModel.getConditions();
      temperatureState = widget.weatherModel.getTemperature();
      feelsLikeState = widget.weatherModel.getTemperatureFeelsLike();
      humidityState = widget.weatherModel.getHumidity();
      windSpeedState = widget.weatherModel.getWindSpeed();
      windGustState = widget.weatherModel.getWindGust();

    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zo pa's Weather App",
          style: TextStyle(fontSize: 15.0),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              "Current Weather",
              style: TextStyle(color: Colors.white, fontSize: 26.0),
            ),
          ),
          Container(
            child: Text(
              "for Omaha",
              style: TextStyle(color: Colors.white, fontSize: 26.0),
            ),
          ),
          Expanded(
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.blueGrey,
              child: ListTile(
                title: Text(
                  '\nTemperature: $temperatureState° F'
                  '\nFeels like: $feelsLikeState° F'
                  '\n$conditionsState'
                  '\nHumidity: $humidityState%'
                  '\nWind speed: $windSpeedState mph'
                  '\nWind gust: $windGustState mph',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              shape: StadiumBorder(
                side: BorderSide(color: Colors.white, width: 2),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Go Back To Home Page',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
