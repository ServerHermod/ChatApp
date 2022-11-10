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
          body: const CustomBody(),
        ));
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image.asset(
        'assets/images/prueba.jpeg',
        height: 400,
        width: 250,
        alignment: Alignment.centerRight,
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter your email',
          labelText: 'Email *',
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      )
    ]);
  }
}
