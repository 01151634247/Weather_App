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
           Text('Updated at 23:46 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(
              height: 10,
            ),
         
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           

            Image.asset('assets/clear.png'),
             Text('19',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

      Column(
            children: 
            [
             Text('MaxTemp 24',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
           Text('MainTemp 16 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      
            ],
            ),  
        
          ],
      
          
         ),
  
            SizedBox(
              height: 35,
            ),
      
        Text('Ligh Rain ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),           
        ],
        
       
      ),
    );
  }
}