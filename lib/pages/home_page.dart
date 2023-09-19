import 'package:flutter/material.dart';

import '../components/container1.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.indigo.shade900),
        ),
        centerTitle: true,
      ),
      body: const CustomContainer1(),
    );
  }
}
