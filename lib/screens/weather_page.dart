import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sa St's Weather App",
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
                  '\nTemperature: 88° F'
                  '\nFeels like: 99° F'
                  '\nCloudy'
                  '\nHumidity: 65%'
                  '\nWind speed: 1.5 mph'
                  '\nWind gust: 10 mph',
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
              print('Go Back To Home Page');
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
