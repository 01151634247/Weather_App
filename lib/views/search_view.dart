

import 'package:flutter/material.dart';

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
            onSubmitted: (value){
             
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



