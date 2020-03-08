import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('I Am Poor'),
          backgroundColor: Colors.purple[900],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/planet.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ));
