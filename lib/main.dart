import 'package:conversor_moeda/tela_dolar.dart';
import 'package:conversor_moeda/tela_euro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(hintColor: Colors.amber, primaryColor: Colors.white),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("\$ Conversor \$"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.monetization_on, size: 150.0, color: Colors.amber),
            Divider(),
            RaisedButton(
              color: Colors.black,
              child: Text(
                'Dolar',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              textColor: Colors.amber,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaDolar()),
                );
              },
            ),
            Divider(),
            RaisedButton(
              color: Colors.black,
              child: Text(
                'Euro',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              textColor: Colors.amber,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaEuro()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

