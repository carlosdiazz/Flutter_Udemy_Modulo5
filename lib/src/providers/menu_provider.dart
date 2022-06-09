import 'dart:convert';

import "package:flutter/services.dart"
    show rootBundle; // COn este paquete puedo lee Json

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //cargarData();
  }

  // Un fufutre va a retornar la informacion una vez que termine
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map datamap = json.decode(resp);
    opciones = datamap['rutas'];

    return opciones;
  }
}

final menuProvider = _MenuProvider();
