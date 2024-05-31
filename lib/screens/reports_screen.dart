import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Reports'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Monthly Expenses Report',
                  style: TextStyle(fontSize: 20)),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(4, (index) {
                  return Card(
                    child: Center(
                      child: Text('Report $index'),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
