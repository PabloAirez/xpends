import 'package:flutter/material.dart';

void main(List<String> args) => runApp(Xpends());

class Xpends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Minhas Despesas"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.pink,
                child: Text("Gráfico ficará aqui"),
                elevation: 5,
              ),
            ),
            Card(
              child: Text("Aqui ficará a lista de despesas"),
            )
          ],
        ));
  }
}
