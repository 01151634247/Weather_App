import 'package:dio/dio.dart';
import 'package:weather_app/models/WeatherModel.dart';

class WeatherService {
 final Dio dio ;

WeatherService(this.dio);
final String baseUrl ='https://api.weatherapi.com/v1';
final String apiKey ='8791666b9d84494d9df232453262308';
Future<WeatherModel> getCurnetWeather({required String cityNName})async{
try {
  Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityNName'); 
  WeatherModel weatherModel =WeatherModel.fromJson(response.data);
 return weatherModel;

}on DioException catch (e) {
 final String errorMessage =e.response?.data['error']['message']??'opps there was en error try latter';
  throw Exception(errorMessage);
  
}catch (e){
  throw Exception('opps ther was erorrrr');
}
  }
  
}  









