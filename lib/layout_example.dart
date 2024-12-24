import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout example"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.alarm),
              ),
              Text("Alarm"),
            ],
          ),
          RepaintBoundary(
            child: CupertinoActivityIndicator(
              color: Colors.amber,
              radius: 50,
            ),
          ),
        ],
      ),
    );
  }
}
