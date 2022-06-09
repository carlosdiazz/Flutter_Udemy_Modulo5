import 'package:flutter/material.dart';
import 'package:muchos_componetes/src/providers/menu_provider.dart';
import 'package:muchos_componetes/src/utils/icono_string_comvert.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Pages'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.cargarData());
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [], //Informacion que tendra mientra no se llena
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        //print(snapshot.data);
        return ListView(
          children: _listItems(snapshot.data!, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, context) => data
      .map((opcion) => Column(children: [
            ListTile(
              title: Text(opcion['texto']),
              leading: getIcon(opcion['icon']),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pushNamed(context, opcion['ruta']);
              },
            ),
            const Divider()
          ]))
      .toList();
}
