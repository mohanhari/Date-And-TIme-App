import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quote> quotes = [
    Quote(author: 'Nelson Mandela', text: 'The greatest glory in living lies not in never falling, but in rising every time we fall'),
    Quote(author: 'Walt Disney', text: 'The way to get started is to quit talking and begin doing.'),
    Quote(author: 'Eleanor Roosevelt', text: 'If life were predictable it would cease to be life, and be without flavor.'),
  ];

//  Widget quoteTemplate(quote){
//    return QuoteCard(quote: quote);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}
