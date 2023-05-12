import 'package:flutter/material.dart';
import 'quote.dart';
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
    Quote(text: 'Laziness is the mother of all bad habits', author: 'Shikamaru Nara')
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
