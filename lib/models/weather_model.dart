class WeatherModel {
  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.temperatureFeelsLike,
    required this.humidity,
    required this.conditions,
    required this.windSpeed,
    required this.windGust
    });

  final String cityName;
  final int temperature;
  final int temperatureFeelsLike;
  final int humidity;
  final int windSpeed;
  final int windGust;
  final String conditions;

  String getCityName(){
    return cityName;
  }

  String getConditions(){
    return conditions;
  }

  int getTemperature(){
    return temperature;
  }

  int getTemperatureFeelsLike(){
    return temperatureFeelsLike;
  }

  int getHumidity(){
    return humidity;
  }

  int getWindSpeed(){
    return windSpeed;
  }

  int getWindGust(){
    return windGust;
  }
}