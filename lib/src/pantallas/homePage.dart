import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle estiloTexto = new TextStyle(fontSize: 25.0);

  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Título"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Número de Clicks:",
          style: estiloTexto,
        ),
        Text(
          "$conteo",
          style: estiloTexto,
        ),
      ])),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure)),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(onPressed: _restar, child: Icon(Icons.remove)),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(onPressed: _sumar, child: Icon(Icons.add)),
      ],
    );
  }

  _sumar() {
    setState(() {
      conteo++;
    });
  }

  _restar() {
    setState(() {
      if (conteo > 0) conteo--;
    });
  }

  _reset() {
    setState(() {
      conteo = 0;
    });
  }
}
