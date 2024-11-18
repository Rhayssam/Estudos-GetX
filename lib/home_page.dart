import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 152, 197, 255),
        title: const Text('Home Page'),
        shadowColor: Colors.black,
        shape: Border.all(width: 1),
      ),
      body: Container(),
    );
  }
}
