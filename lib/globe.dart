import 'package:flutter/material.dart';

class Glob extends StatelessWidget {
  const Glob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      appBar: AppBar(
        title: Text(
          'Globe',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
