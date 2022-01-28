import "package:flutter/material.dart";
import '../models/transaction.dart';
import "./new_transaction.dart";
import "./transaction_list.dart";

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Tacos',
      amount: 10.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shoes',
      amount: 12.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Shirt',
      amount: 14.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Tacos',
      amount: 10.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shoes',
      amount: 12.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Shirt',
      amount: 14.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Tacos',
      amount: 10.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shoes',
      amount: 12.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Shirt',
      amount: 14.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
          addTransaction: _addNewTransaction,
        ),
        TransactionList(_userTransactions),
      ],
    );
  }
}
