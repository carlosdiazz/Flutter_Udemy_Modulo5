import 'package:flutter/material.dart';

//! Aqui depediendo el string que me mande mando un Widget de un Icono
final _icons = <String, IconData> {

  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,
  'tune'          : Icons.tune,
  'list'          : Icons.list,
  'pageview'      : Icons.pageview_outlined
};

Icon getIcon ( String nombreIcono) {

  return Icon(_icons[nombreIcono], color: Colors.blue);
}