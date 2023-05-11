import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(
  home: NiceQuotes(),
));
class NiceQuotes extends StatefulWidget {
  const NiceQuotes({Key? key}) : super(key: key);

  @override
  State<NiceQuotes> createState() => _NiceQuotesState();
}

class _NiceQuotesState extends State<NiceQuotes> {
  List<String> quotes = [
    'Procrastination is the thief of time',
    'Laziness is a secret ingredient that goes into failure',
    'Laziness is the mother of all bad habits'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('Awesome quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
