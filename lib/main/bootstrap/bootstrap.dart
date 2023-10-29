import 'dart:async';

import 'package:flutter/material.dart';

typedef AppBuilder = Future<Widget> Function();

Future<void> bootstrap(AppBuilder builder) async {
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Run the app
    runApp(
      await builder(),
    );
  }, (error, stack) {
    // debugPrint(error)
  });
}
