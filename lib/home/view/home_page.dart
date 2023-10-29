import 'package:flutter/material.dart';
import 'package:leglek/home/widgets/home_content.dart';
import 'package:leglek/navigation/navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static MaterialPageRoute route() => MaterialPageRoute(builder: (_) => const HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leglek"),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: const HomeContent(),
    );
  }
}
