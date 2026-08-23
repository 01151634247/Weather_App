
import 'package:flutter/material.dart';

class NoweahterPage extends StatelessWidget {
  const NoweahterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Ther is no weather Start ',
            style: TextStyle(fontSize: 30,color: Colors.black),
            ),
              Text('Searching Now',
              style: TextStyle(fontSize: 30,color: Colors.black),
              ),
          ],
        ),
      ),
    );
  }
}

