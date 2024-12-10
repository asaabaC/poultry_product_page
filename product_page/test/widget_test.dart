import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:product_page/main.dart'; // Corrected import path

void main() {
  testWidgets('PoultryPage smoke test', (WidgetTester tester) async {
    // Build the PoultryPage and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: PoultryPage())); // Removed const

    // Verify the title is displayed.
    expect(find.text('Poultry Birds & Products'), findsOneWidget);

    // Verify that product cards are present.
    expect(find.byType(Card), findsWidgets);

    // Verify specific product information (e.g., Layers).
    expect(find.text('Layers'), findsOneWidget);
    expect(find.text('UGX 12000'), findsOneWidget);
  });
}
