import 'package:flutter/material.dart';
import 'package:my_app/login.dart';

class AccountPage extends StatelessWidget {
  final String username;

  const AccountPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
         padding: const EdgeInsets.all(32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            SizedBox(height: 4),
            Text(
              'Welcome $username!',
              style: TextStyle(fontSize: 35,),
            ),
             SizedBox(height: 10),
                IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () {
                    // Navigating to login page
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                ),
          ],
        ),
      ),
    );
  }
}

 Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 179, 29, 29), width: 2),
          shape: BoxShape.circle),
      child: const Icon(Icons.person, color: Color.fromARGB(255, 23, 21, 21), size: 80),
    );
  }