import 'package:flutter/material.dart';


class Subject extends StatefulWidget {

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebbin',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ebbin - Revisor de assuntos',),
          backgroundColor:  Colors.lightGreen,
          centerTitle: true,
        ),
        body: Center(    
          child: Text('Lista de Assuntos'),  
        )
      ),
    );  
  }
}
