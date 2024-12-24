import 'dart:developer';

import 'package:app_lifecycle_darsi/home_screen.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with WidgetsBindingObserver {
  String appState = "";
  bool appPaused = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    log(state.toString());
    if (state == AppLifecycleState.paused) {
      navigate();
    }
    // appState = state.toString();
    // if (state == AppLifecycleState.inactive) {
    //   log("APP CHANGED IT IS LIFECYLE: $appState");
    // } else if (state == AppLifecycleState.paused) {
    //   appPaused = true;
    //   log("APP CHANGED IT IS to paused and not terminated: $appState");
    // } else if (state == AppLifecycleState.detached) {
    //   log("APP TERMINATED");
    // } else if (state == AppLifecycleState.resumed) {
    //   log("App resumed: $state");
    // } else if (state == AppLifecycleState.hidden) {
    //   log("App hidden $state");
    // }
    // if (appPaused) {
    //   navigate();
    // }
  }

  void navigate() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Products screen",
        ),
      ),
    );
  }
}
