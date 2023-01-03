import 'package:flutter/material.dart';

import '../widgets/problem_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "English Learning",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "English Learning",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const ProblemSlider(),
      ),
    );
  }
}
