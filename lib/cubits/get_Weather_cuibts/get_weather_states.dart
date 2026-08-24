class WeatherStates {}

class InitialState extends WeatherStates{}
class WeatherLoadState extends WeatherStates{
}
class WeatherFailureState extends WeatherStates{
   final String erromessage;

  WeatherFailureState(this.erromessage);
}