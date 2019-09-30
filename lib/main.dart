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
      body: Center(
        child: RaisedButton.icon(
          onPressed: () {
            print('You clicked');
          },
          icon: Icon(
            Icons.mail
          ),
          label: Text('Mail me'),
          color: Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blueGrey[300],
      ),
    );
  }
}

