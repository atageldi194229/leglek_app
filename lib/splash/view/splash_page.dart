import 'package:flutter/material.dart';
import 'package:leglek/home/home.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: SplashPage());

  @override
  Widget build(BuildContext context) {
    //remove this then
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushAndRemoveUntil(HomePage.route(), (route) => false);
    });

    return const Scaffold(
      body: Center(
        child: Text("Leglek"),
      ),
    );
  }
}
