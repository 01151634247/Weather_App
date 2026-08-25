import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_Weather_cuibts/get_weather_cuibit.dart';
import 'package:weather_app/cubits/get_Weather_cuibts/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCuibit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCuibit,WeatherStates >(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCuibit>(
                    context,
                  ).weatherModel?.weatherConditions,
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.amber;
  }
  if (condition == 'Sunny' || condition == 'Clear') {
    return Colors.amber;
  } else if (condition == 'Partly cloudy') {
    return Colors.blueGrey;
  } else if (condition == 'Cloudy' || condition == 'Overcast') {
    return Colors.deepOrange;
  } else if (condition == 'Haze' ||
      condition == 'Dust haze' ||
      condition == 'Blowing dust' ||
      condition == 'Dust storm' ||
      condition == 'Sandstorm' ||
      condition == 'Severe sandstorm' ||
      condition == 'Mist' ||
      condition == 'Smoke' ||
      condition == 'Smoky haze' ||
      condition == 'Smog' ||
      condition == 'Severe smog' ||
      condition == 'Saharan dust' ||
      condition == 'Dust' ||
      condition == 'Fog' ||
      condition == 'Freezing fog') {
    return Colors.grey;
  } else if (condition == 'Patchy rain possible' ||
      condition == 'Patchy light drizzle' ||
      condition == 'Light drizzle' ||
      condition == 'Patchy light rain' ||
      condition == 'Light rain' ||
      condition == 'Moderate rain at times' ||
      condition == 'Moderate rain' ||
      condition == 'Heavy rain at times' ||
      condition == 'Heavy rain' ||
      condition == 'Light rain shower' ||
      condition == 'Moderate or heavy rain shower' ||
      condition == 'Torrential rain shower') {
    return Colors.indigo;
  } else if (condition == 'Patchy snow possible' ||
      condition == 'Blowing snow' ||
      condition == 'Blizzard' ||
      condition == 'Patchy light snow' ||
      condition == 'Light snow' ||
      condition == 'Patchy moderate snow' ||
      condition == 'Moderate snow' ||
      condition == 'Patchy heavy snow' ||
      condition == 'Heavy snow' ||
      condition == 'Light snow showers' ||
      condition == 'Moderate or heavy snow showers') {
    return Colors.amber;
  } else if (condition == 'Patchy sleet possible' ||
      condition == 'Patchy freezing drizzle possible' ||
      condition == 'Freezing drizzle' ||
      condition == 'Heavy freezing drizzle' ||
      condition == 'Light freezing rain' ||
      condition == 'Moderate or heavy freezing rain' ||
      condition == 'Light sleet' ||
      condition == 'Moderate or heavy sleet' ||
      condition == 'Ice pellets' ||
      condition == 'Light sleet showers' ||
      condition == 'Moderate or heavy sleet showers' ||
      condition == 'Light showers of ice pellets' ||
      condition == 'Moderate or heavy showers of ice pellets') {
    return Colors.cyan;
  } else if (condition == 'Thundery outbreaks possible' ||
      condition == 'Patchy light rain with thunder' ||
      condition == 'Moderate or heavy rain with thunder' ||
      condition == 'Patchy light snow with thunder' ||
      condition == 'Moderate or heavy snow with thunder') {
    return Colors.deepPurple;
  } else {
    return Colors.blue;
  }
}













/*
MaterialColor getThemeColor ( String condition){
  if (condition=='sunny'){
    return Colors.amber;

  }

}


}*/