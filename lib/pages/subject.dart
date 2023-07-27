import 'package:flutter/material.dart';

import 'package:ebbin/pages/add_subject.dart';

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
          title: Text('Lista de Assuntos',),
          backgroundColor:  Colors.lightGreen,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){ 
             _dialogBuilder(context);
          },
          backgroundColor: Colors.lightGreen,
          child: Icon(Icons.add),
          ),
        body: Center(    
          child: Text('Lista de Assuntos'),  
        )
      ),
    );  
  }
}


Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AddSubject();
      },
    );
 }

