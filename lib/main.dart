import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[300],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('1'),
              padding: EdgeInsets.all(20.0),
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              child: Text('2'),
              padding: EdgeInsets.all(20.0),
              color: Colors.redAccent,
            ),
          ),
          Expanded(
            child: Container(
              child: Text('3'),
              padding: EdgeInsets.all(20.0),
              color: Colors.grey,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blueGrey[300],
      ),
    );
  }
}

