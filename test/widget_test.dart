import 'package:client_control/components/hamburger_menu.dart';
import 'package:client_control/main.dart';
import 'package:client_control/pages/clients_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  testWidgets('Testing Hamburger Menu', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(home: HamburgerMenu()));
    expect(find.text('Menu'), findsOneWidget);
  });

  testWidgets('Testing Hamburger Menu', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(home: HamburgerMenu()));
    expect(find.text('Gerenciar clientes'), findsOneWidget);
  });

  testWidgets('Testing Hamburger Menu', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(home: HamburgerMenu()));
    expect(find.text('Tipos de clientes'), findsOneWidget);
  });

  testWidgets('Testing Hamburger Menu', (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(home: HamburgerMenu()));
    expect(find.text('Sair'), findsOneWidget);
  });

}
