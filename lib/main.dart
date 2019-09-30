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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Hello'),
          RaisedButton(
            onPressed: () {},
            child: Text('click me'),
            color: Colors.amber,
          ),
          Container(
            child: Text('something'),
            padding: EdgeInsets.all(20.0),
            color: Colors.grey,
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

