import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  //lista
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Conta #01',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta #02',
      value: 555.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta #03',
      value: 11.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Conta #04',
      value: 420.10,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't5',
      title: 'Conta #05',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
