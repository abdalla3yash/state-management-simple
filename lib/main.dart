import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: 'State',
    );
  }
}

class HomePage extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Managment'),
      ),
      body: Center(
        child: myRow(context),
      ),
    );
  }

  Widget myRow(BuildContext context) {
    return StatefulBuilder(builder: (context, StateSetter setState) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.remove,
                color: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  counter--;
                });
              }),
          Text(
            '$counter',
            style: TextStyle(fontSize: 33),
          ),
          IconButton(
              icon: Icon(Icons.add, color: Colors.blue),
              onPressed: () {
                setState(() {
                  counter++;
                });
              })
        ],
      );
    });
  }
}
