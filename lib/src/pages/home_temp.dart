import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final List numeros = ['Uno', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componente Temp'),
      ),
      body: ListView(
        children: _crearItems(numeros),
      ),
    );
  }

  List<Widget> _crearItems(numeros) {
    List<Widget> lista = [];
    for (String opciones in numeros) {
      final tempWidget = ListTile(title: Text(opciones));
      lista
        ..add(tempWidget)
        ..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCortos() {
    var widgts = numeros.map((item) => null);
  }
}
