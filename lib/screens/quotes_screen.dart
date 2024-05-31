import 'package:flutter/material.dart';

class QuotesScreen extends StatelessWidget {
  final List<String> quotes = [
    "“The best time to plant a tree was 20 years ago. The second best time is now.” – Chinese Proverb",
    "“An investment in knowledge pays the best interest.” – Benjamin Franklin",
    "“The stock market is filled with individuals who know the price of everything, but the value of nothing.” – Philip Fisher",
    "“Risk comes from not knowing what you're doing.” – Warren Buffett",
    "“Financial freedom is available to those who learn about it and work for it.” – Robert Kiyosaki"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Quotes'),
      ),
      body: ListView.builder(
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                quotes[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
