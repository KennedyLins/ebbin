// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';

// import 'package:ebbin/pages/add_subject.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Ebbin',
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               'Ebbin - Revisor de assuntos',
//             ),
//             backgroundColor: Colors.lightGreen,
//             centerTitle: true,
//           ),
//           body: Container(
//             width: double.infinity,
//             height: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.lightGreen,
//                       foregroundColor: Colors.white,
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(9)),
//                       )),
//                   onPressed: () => _dialogText(context),
//                   child: Text('Iniciar novo assunto',
//                       style: TextStyle(fontSize: 25.0),
//                       textAlign: TextAlign.center),
//                 ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.lightGreen,
//                       foregroundColor: Colors.white,
//                       shape: const RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(9)),
//                       )),
//                   onPressed: () {},
//                   child: Text('Trilha de revisao      ',
//                       style: TextStyle(fontSize: 25.0),
//                       textAlign: TextAlign.center),
//                 )
//               ],
//             ),
//           )),
//     );
//   }

//   Future<void> _dialogText(BuildContext context) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context){
//         return AddSubject();
//       }
//       );
//   }
// }









import 'package:ebbin/pages/subject.dart';
import 'package:flutter/material.dart';

import 'package:ebbin/pages/add_subject.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DialogExample(),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ebbin - Revisor de assuntos'),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            ElevatedButton(
              onPressed: () => _dialogBuilder(context),
              child: const Text('Iniciar novo assunto'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Subject()));
              },
              child: const Text('Trilha de revisao'),
            ),
          ],
        ), 
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AddSubject();
      },
    );
  }
}
