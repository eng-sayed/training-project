import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_training/main.dart';
import 'package:flutter/material.dart';

class SecScreen extends StatefulWidget {
  @override
  _SecScreenState createState() => _SecScreenState();
}

class _SecScreenState extends State<SecScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sec'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MyHomePage();
                  }));
                });
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
