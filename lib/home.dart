import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebbin',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Ebbin - Revisor de assuntos', style: TextStyle(),)
            ),
          backgroundColor:  Colors.lightGreen,
        ),
      ),
    );  
  }
}

