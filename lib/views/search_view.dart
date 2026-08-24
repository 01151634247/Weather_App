
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_Weather_cuibts/get_weather_cuibit.dart';
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
           BlocProvider.of<GetWeatherCuibit>(context).getWeather(CityName: value);
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

