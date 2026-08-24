import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_Weather_cuibts/get_weather_cuibit.dart';
import 'package:weather_app/cubits/get_Weather_cuibts/get_weather_states.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/No_weather_widget.dart';
import 'package:weather_app/widgets/Weater_info_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar:AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SearchView();
            }),);
          }, icon:Icon(Icons.search,color: Colors.white,size: 30,),),
          ],
      centerTitle: true,
        backgroundColor:  Colors.blue,
        title: Text('WeatherApp',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),),

      body:BlocBuilder<GetWeatherCuibit,WeatherStates>(
        builder: (context,state){
          if(state is InitialState){
          return NoweahterPage (

          );
          }  else if(state is WeatherSuccesState){
               state.weatherModel;
            return WeaterinfoBody(
              weatherModel: state.weatherModel,
              
            );
          }else{
            return Text('Theree was an erro');
          }

      }),
      
    );
  }
}