import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('Hermod Messenger'),
          ),
          body: Center(
            child: Column(children: <Widget>[
              Image.asset(
                'assets/images/prueba.jpeg',
                height: 400,
                width: 250,
                alignment: Alignment.centerRight,
              ),
            ]),
          )),
    );
  }
}
