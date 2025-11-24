// Import necessary packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

// Main function
void main() {
  runApp(
    // Wrap the app with ChangeNotifierProvider to provide the CounterModel
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}

// MyApp widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}

// CounterPage widget
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Consumer<CounterModel>(
          builder: (context, counterModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You have pushed the button this many times:'),
                Text(
                  '${counterModel.counter}',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Call the increment method of CounterModel using Provider
          Provider.of<CounterModel>(context, listen: false).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
