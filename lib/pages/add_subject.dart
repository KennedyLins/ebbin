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






// AlertDialog(
//           title: const Text('Basic dialog title'),
//           content: const Text(
//             'A dialog is a type of modal window that\n'
//             'appears in front of app content to\n'
//             'provide critical information, or prompt\n'
//             'for a decision to be made.',
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Disable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Enable'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );