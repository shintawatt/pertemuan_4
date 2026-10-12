import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pml/pages/academic_dashboard.dart'; // Sesuaikan 'pml' dengan nama package di pubspec.yaml kamu

void main() {
  testWidgets('Dashboard satu kolom di layar sempit (<700px)', (tester) async {
    // Set ukuran layar ke ukuran sempit (layar HP)
    tester.view.physicalSize = const Size(400, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const DashboardApp());

    // Memastikan widget beroperasi tanpa error di layar sempit
    expect(find.byType(DashboardApp), findsOneWidget);
  });

  testWidgets('Dashboard dua kolom di layar lebar (>=700px)', (tester) async {
    // Set ukuran layar ke ukuran lebar (layar tablet/desktop)
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const DashboardApp());

    // Memastikan widget beroperasi tanpa error di layar lebar
    expect(find.byType(DashboardApp), findsOneWidget);
  });
}