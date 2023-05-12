import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_dart.dart';
void main() => runApp(const MaterialApp(
  home: NiceQuotes(),
));
class NiceQuotes extends StatefulWidget {
  const NiceQuotes({Key? key}) : super(key: key);

  @override
  State<NiceQuotes> createState() => _NiceQuotesState();
}

class _NiceQuotesState extends State<NiceQuotes> {
  List<Quote> quotes = [
    Quote(text: 'Procrastination is the thief of time', author: 'Edward Young'), // Object
    Quote(text: 'Laziness is a secret ingredient that goes into failure', author: 'Robert Half'),
    Quote(text: 'Laziness is the mother of all bad habits', author: 'Shikamaru-Nara')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}
