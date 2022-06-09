import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Pages'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: <Widget>[
          _cardTipo1(),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget> [
          ListTile(
            leading: const Icon(Icons.ac_unit_outlined),
            title: const Text('Titulo 1'),
          )
        ],
      ),
    );
  }
}
