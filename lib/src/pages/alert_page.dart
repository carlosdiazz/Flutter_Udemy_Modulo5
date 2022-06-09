import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Pages'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  () => Navigator.pop(context),

        child: const Icon(Icons.adb_sharp),
      ),
    );
  }
}
