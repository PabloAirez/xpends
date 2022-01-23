import 'package:flutter/material.dart';
import 'package:xpends/models/transaction.dart';

void main(List<String> args) => runApp(Xpends());

class Xpends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
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
    return Scaffold(
        appBar: AppBar(
          title: Text("Minhas Despesas"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.pink,
                child: Text("Gráfico ficará aqui"),
                elevation: 5,
              ),
            ),
            Column(
              children: _transactions.map((trans) {
                return Card(
                  child: Text(trans.title),
                );
              }).toList(),
            )
          ],
        ));
  }
}
