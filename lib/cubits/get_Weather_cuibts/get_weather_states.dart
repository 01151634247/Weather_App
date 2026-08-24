import 'package:weather_app/models/WeatherModel.dart';

class WeatherStates {}
class InitialState extends WeatherStates{}
class WeatherSuccesState extends WeatherStates{
  final WeatherModel weatherModel;

  WeatherSuccesState(this.weatherModel);


}
class WeatherFailureState extends WeatherStates{
   final String erromessage;

  WeatherFailureState(this.erromessage);
}