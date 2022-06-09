import 'package:flutter/material.dart';
import 'package:muchos_componetes/src/pages/alert_page.dart';
import 'package:muchos_componetes/src/pages/avatar_pages.dart';
import 'package:muchos_componetes/src/pages/card_page.dart';
import 'package:muchos_componetes/src/pages/home_pages.dart';

Map <String, WidgetBuilder> obtenerRutasAplicacion() =>
 <String, WidgetBuilder>{
  '/'         :   (context) => const HomePages(),
  'alert'     :   (context) => const AlertPage(),
  'avatar'    :   (context) => const AvatarPage(),
  'card'      :   (context) => const CardPage()
};
