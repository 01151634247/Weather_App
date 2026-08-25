import 'package:flutter/material.dart';
import 'package:weather_app/models/WeatherModel.dart';

class WeaterinfoBody extends StatelessWidget {
   WeaterinfoBody({super.key, required this.weatherModel, });
      
      final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weatherModel.cityName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
           Text('Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(
              height: 10,
            ),
         
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           

            Image.network('https:${weatherModel.image}'),
             Text(weatherModel.temp.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

      Column(
            children: 
            [
             Text('MaxTemp${weatherModel.maxTemp.toString()}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
           Text('MinTemp${weatherModel.minTemp.toString()}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      
            ],
            ),  
        
          ],
      
          
         ),
  
            SizedBox(
              height: 35,
            ),
      
        Text(weatherModel.weatherConditions,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),           
        ],
        
       
      ),
    );
  }
}