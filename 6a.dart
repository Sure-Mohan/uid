import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
return MaterialApp( home:
Scaffold( appBar: AppBar(
 title: Text('Custom Widget Example'),
 ),
 body: Column(
mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[ Padding( padding: constEdgeInsets.all(8.0), child:
CustomTextField( hintText: 'Enter your name', onChanged: (value) {
print('Name changed: $value');
 },
 ),
 ),
SizedBox(height: 20),
Padding( padding: constEdgeInsets.all(8.0), child: CustomTextField( hintText:
'Enter Email', onChanged: (value) {
print('Name changed: $value');
 },
 ),
 ),
SizedBox(height: 20),
Padding( padding: constEdgeInsets.all(8.0), child: CustomTextField( hintText:
'Enter Roll Number', onChanged: (value) {
print('Name changed: $value');
 },
 ),
 ),
SizedBox(height: 20), CustomButton( text: 'Press Me', onPressed: () {
print('Button pressed!');
 },
),
 ],
 ),
 ),
 );
 }
}
class CustomButton extends StatelessWidget {
 final String? text; final VoidCallback? onPressed;
constCustomButton({ Key? key,
 @required this.text,
 @required this.onPressed,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) { return ElevatedButton( onPressed: onPressed,
 child: Text(text!),
 );
 }
}

class CustomTextField extends StatelessWidget{ final String hintText; final
ValueChanged<String>onChanged;
constCustomTextField({ Key? key, required this.hintText, required this.onChanged, }) :
super(key: key);
 @override
 Widget build(BuildContext context) {
 return TextField( onChanged: onChanged, decoration: InputDecoration( hintText: hintText,
 border: OutlineInputBorder(),
 ),
 );
 }
}
