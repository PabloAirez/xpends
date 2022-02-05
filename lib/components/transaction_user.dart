import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'transaction_form.dart';
import '../models/transaction.dart';

class transactionUser extends StatefulWidget {
  @override
  transactionUserState createState() => transactionUserState();
}

class transactionUserState extends State<transactionUser> {
  final _transactions = [
    transactions(
      id: 1,
      title: "Conta de luz",
      value: 180.90,
      date: DateTime.now(),
    ),
    transactions(
      id: 2,
      title: "Conta de Internet",
      value: 121.19,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        transactionList(_transactions),
        transactionForm(),
      ],
    );
  }
}
