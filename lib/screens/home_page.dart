import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_1/screens/weather_page.dart';
import '../models/weather_model.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String cardText = "Weather and people, they both change often!";

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zo Pa's Weather App",
          style: TextStyle(fontSize: 15.0),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Weather Just for You!',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Image.asset('images/weather_clouds.png'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your Location",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Text(
                "OR",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 30.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                "Search by city",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: StadiumBorder(
                  side: BorderSide(color: Colors.white, width: 2),
                ),
              ),
              onPressed: () async {
                WeatherModel weatherModel = WeatherModel(cityName: "Lincoln", temperature: 50, temperatureFeelsLike: 40, humidity: 60, conditions: 'sunny', windSpeed: 10, windGust: 20);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return WeatherPage(
                          weatherModel: weatherModel,
                        );
                      },
                  ),
                );
              },
              child: Text(
                'Get Current Weather',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.blueGrey,
              child: ListTile(
                title: Text(
                  cardText,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ], // children array
        ),
      ),
    );
  } }
