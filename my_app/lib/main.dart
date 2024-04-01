import 'package:flutter/material.dart';
import 'package:my_app/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Manager',
      theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}

// class SignInPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//       ),
//       body: Center(
//         child: Padding(
//             padding: EdgeInsets.all(20.0),
//         child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10.0),
//                   width: 300.0, 
//                   child: TextField(
//                     decoration: InputDecoration(
//                       labelText: 'Username',
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20.0),
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10.0),
//                   width: 300.0, 
//                   child: TextField(
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                       border: OutlineInputBorder(),
//                       fillColor: Colors.grey[200],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20.0,),
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10.0),
//                   width: 300.0,
//                   height: 50.0,
                 
//                   child: ElevatedButton(onPressed: () {
                    
//                   },child: Text('Submit'),),
//                 )
//               ],
//         ),
//       ),
//       )
//       //       // RaisedButton(
//       //       //   onPressed: () {
//       //       //     // Validate credentials and navigate to Home Page
//       //       //     // Navigator.push(
//       //       //     //   context,
//       //       //     //   MaterialPageRoute(builder: (context) => HomePage()),
//       //       //     // );
//       //       //   },
//       //       //   child: Text('Sign In'),
//       //       // ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
