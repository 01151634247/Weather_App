


import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/get_Weather_cuibts/get_weather_states.dart';
import 'package:weather_app/models/WeatherModel.dart';
import 'package:weather_app/models/Weather_Service.dart';

class GetWeatherCuibit extends Cubit<WeatherStates> {
 GetWeatherCuibit():super(InitialState());
  late WeatherModel weatherModel;

   
    getWeather({required String CityName})async{
      try {
        weatherModel= await WeatherService(Dio()).getCurnetWeather(cityNName: CityName);
        emit(WeatherSuccesState());
      }  catch (e) {
          emit(WeatherFailureState(e.toString()));
      }
    }

  }

