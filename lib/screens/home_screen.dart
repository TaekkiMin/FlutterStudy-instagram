import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Column(
        children: [
          Text('Instagram에 오신 것을 환영합니다.'),
        ],
      ),
    );
  }
}
