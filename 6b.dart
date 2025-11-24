import'package:flutter/material.dart';
void main() { runApp(MyApp());
}
class MyAppextendsStatelessWidget {
 @override
 Widget build(BuildContext context){ return
MaterialApp( theme: ThemeData(
 // Define the overall theme of the app primaryColor:
Colors.blue, accentColor: Colors.orange,
fontFamily: 'Roboto', textTheme: TextTheme(
 headline1: TextStyle(fontSize: 24, fontWeight:
FontWeight.bold), bodyText1: TextStyle(fontSize: 16),
 ),
elevatedButtonTheme: ElevatedButtonThemeData(
 style: ElevatedButton.styleFrom( primary: Colors.blue,
textStyle: TextStyle(fontSize: 18),
 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), shape:
RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
 ),
 ),
 ),
 ),
 home: HomePage()
);
 }
}
class HomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold( appBar: AppBar(
 title: Text('Styling Example'),
 ),
 body: Center( child: Column(
mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
Text(
 'Welcome to MyApp',
 style: Theme.of(context).textTheme.headline1,
 ),
SizedBox(height: 20), ElevatedButton( onPressed: () {},
 child: Text('Get Started'),
 ),
 ],
 ),
 ),
 );
 }
}
