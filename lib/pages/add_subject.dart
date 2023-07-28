import 'package:flutter/material.dart';


class AddSubject extends StatelessWidget {

  final item = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Adicionar Assunto'),
      content: TextField(
        autofocus: true,
        controller: item,
      ),
      actions: [
        TextButton(
          onPressed: (){ 
            Navigator.of(context).pop();
          },
          child: Text('Cancelar')
        ),
        TextButton(
          onPressed: (){ 
            null;
          },
          child: Text('Adicionar')
        ),
      ],
    );
  }
}
