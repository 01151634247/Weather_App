class WeatherStates {}
class InitialState extends WeatherStates{}
class WeatherSuccesState extends WeatherStates{}
class WeatherFailureState extends WeatherStates{
   final String erromessage;

  WeatherFailureState(this.erromessage);
}