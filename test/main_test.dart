// test/main_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:lab15/main.dart'; // Замість 'your_app' використовуйте правильний шлях

void main() {
  testWidgets('Check if title is in the correct format', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final titleFinder = find.text('AV-31: Lev\'s last Flutter App');
    expect(titleFinder, findsOneWidget);
  });

  testWidgets('Check if FloatingActionButton with mouse icon is present', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final fabFinder = find.byType(FloatingActionButton);
    expect(fabFinder, findsOneWidget);

    final iconFinder = find.byIcon(Icons.mouse);
    expect(iconFinder, findsOneWidget);
  });
}
