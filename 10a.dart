Let’s assume you have a simple widget:
// lib/widgets/counter_button.dart
import 'package:flutter/material.dart';
class CounterButton extends StatefulWidget {
  final String label;
  const CounterButton({Key? key, required this.label}) : super(key: key);

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.label),
        Text('Count: $_count', key: const Key('countText')),
        ElevatedButton(
          key: const Key('incrementButton'),
          onPressed: _increment,
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
Unit tests for CounterButton
Create a test file e.g. test/widgets/counter_button_test.dart:
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app21/widgets/counter_button.dart';

void main() {
  testWidgets('CounterButton displays initial label and count zero', (WidgetTester tester) async {
    // Arrange
    const label = 'Tap me';

    // Act
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: CounterButton(label: label)),
      ),
    );

    // Assert
    expect(find.text(label), findsOneWidget);
    expect(find.byKey(const Key('countText')), findsOneWidget);
    expect(find.text('Count: 0'), findsOneWidget);
    expect(find.byKey(const Key('incrementButton')), findsOneWidget);
  });

  testWidgets('CounterButton increments count on tap', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: CounterButton(label: 'Test')),
      ),
    );

    // Tap the button
    await tester.tap(find.byKey(const Key('incrementButton')));
    // Let UI rebuild
    await tester.pump();

    // Expect count to be 1
    expect(find.text('Count: 1'), findsOneWidget);

    // Tap again
    await tester.tap(find.byKey(const Key('incrementButton')));
    await tester.pump();

    expect(find.text('Count: 2'), findsOneWidget);
  });
}
