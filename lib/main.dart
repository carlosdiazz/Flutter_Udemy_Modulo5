import 'package:flutter/material.dart';
import 'package:muchos_componetes/src/pages/home_pages.dart';
//import 'package:muchos_componetes/src/pages/home_temp.dart';
// ignore_for_file: prefer_const_constructors
//Sniper => mateappa : genera una aplicacion

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,  //Quito el banner
      //home: HomePageTemp()              //Home Pages de Prueba
      home: HomePages()
      );
  }
}