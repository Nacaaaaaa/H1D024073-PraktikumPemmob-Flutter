import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Belajar Flutter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(child: Text('Hello World')),
    );
  }
}