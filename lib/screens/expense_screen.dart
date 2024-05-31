import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  @override
  _ExpenseScreenState createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final List<Map<String, String>> _expenses = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  void _addExpense(String name, String amount) {
    if (name.isNotEmpty && amount.isNotEmpty) {
      setState(() {
        _expenses.add({'name': name, 'amount': amount});
      });
      _nameController.clear();
      _amountController.clear();
    }
  }

  void _showAddExpenseDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add New Expense'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(hintText: 'Enter expense name'),
              ),
              TextField(
                controller: _amountController,
                decoration: const InputDecoration(hintText: 'Enter amount'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                _addExpense(_nameController.text, _amountController.text);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: _expenses.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: const Icon(Icons.money),
              title: Text('${_expenses[index]['name']} - \$${_expenses[index]['amount']}'),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddExpenseDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
