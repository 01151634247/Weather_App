import 'package:flutter/material.dart';
import 'package:weather_app/widgets/Weater_info_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search,color: Colors.white,size: 30,),),
          ],
      centerTitle: true,
        backgroundColor:  Colors.blue,
        title: Text('WeatherApp',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),),

      body: WeaterinfoBody(),
      
    );
  }
}