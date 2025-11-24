import 'package:flutter/material.dart';
class DebugExample extends StatelessWidget {
 final int counter = 0;
 @override
 Widget build(BuildContext context) {
 return Scaffold(
appBar: AppBar(title: Text("Debug Demo")),
 body: Center(
 child: Column(
mainAxisAlignment: MainAxisAlignment.center,
 children: [
Text('Counter: $counter'),
ElevatedButton(
onPressed: () {
 counter++; // ❌Error: counter is final and can’t be modified
 },
 child: Text('Increment'),
 ),
 ],
 ),
 ),
 );
