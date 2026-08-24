
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/WeatherModel.dart';
import 'package:weather_app/models/Weather_Service.dart';


class SearchView extends StatelessWidget {
 const SearchView({super.key });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Search a City'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: TextField(
            onSubmitted: (value)async{
          //  weatherModel= await WeatherService(Dio()).getCurnetWeather(cityNName: value);
              Navigator.pop(context);
             
            },
              decoration: InputDecoration(

              contentPadding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
                labelText: 'Search',
                suffixIcon:
                 Icon(Icons.search),
               hintText: 'Enter City name',
               
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            
              ),
            ),
          ),
        ),
    );
  }
}

