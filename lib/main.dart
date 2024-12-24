import 'package:app_lifecycle_darsi/app_lifecycle_2.dart';
import 'package:app_lifecycle_darsi/home_screen.dart';
import 'package:app_lifecycle_darsi/layout_example.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [AppLifecycleListener].

void main() {
  runApp(const AppLifecycleListenerExample());
}

class AppLifecycleListenerExample extends StatelessWidget {
  const AppLifecycleListenerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LayoutExample(),
    );
  }
}
