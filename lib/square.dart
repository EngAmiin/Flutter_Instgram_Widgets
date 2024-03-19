import 'package:flutter/material.dart';

class square extends StatelessWidget {
  final String child;

  square({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      height: 200,
      width: 400,
      color: Colors.amber,
      child: Center(
          child: Text(
        child,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
