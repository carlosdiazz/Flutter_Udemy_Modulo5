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
        //children: _crearItems(),
        children: _crearItemsCortos(),
      ),
    );
  }

  //List<Widget> _crearItems() {
  //  List<Widget> lista = [];
  //  for (String opciones in numeros) {
  //    final tempWidget = ListTile(title: Text(opciones));
  //    lista
  //      ..add(tempWidget)
  //      ..add(const Divider());
  //  } return lista; }

  List<Widget> _crearItemsCortos() => numeros.map(
    (item) => Column(
      children: [
        ListTile(
          title: Text(item),
          subtitle: const Text('Subtitulo'),
          leading: const Icon(Icons.ac_unit), //Icono que va al inicio
          trailing: const Icon(Icons.access_alarm_rounded), //Icono que va al final
          onTap: () {}, //Si queremos una accion apra ejecutar un accion
        ),
      ],
    )).toList();
}
