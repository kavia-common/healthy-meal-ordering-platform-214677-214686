import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_app_frontend/main.dart';
import 'package:healthy_app_frontend/screens/home_screen.dart';

void main() {
  testWidgets('Home screen renders and shows role selector', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // App bar title
    expect(find.text('Healthy Meals'), findsOneWidget);

    // Role selector exists
    expect(find.byType(DropdownButton<AppRole>), findsOneWidget);

    // Placeholder content shows at least one section
    expect(find.textContaining('Orders'), findsWidgets);
  });

  testWidgets('Route wiring works for HomeScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Confirm we are on Home route
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}
