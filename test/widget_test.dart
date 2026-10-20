import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pml/main.dart';
import 'package:pml/widgets/app_footer.dart';
import 'package:pml/widgets/item_barang_widget.dart';

void main() {
  testWidgets('Marketplace UI, GridView, Hero widget, and Footer test',
      (WidgetTester tester) async {
    // Memberikan resolusi layar yang cukup untuk rendering grid
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    // Jalankan aplikasi utama
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verifikasi App Bar dan Judul
    expect(find.text('Shopping List Market'), findsOneWidget);

    // Verifikasi GridView keberadaannya
    expect(find.byType(GridView), findsWidgets);

    // Verifikasi ItemBarangWidget dan data produk (foto, stok, rating)
    expect(find.byType(ItemBarangWidget), findsWidgets);
    expect(find.textContaining('Bayam Hijau Organik'), findsWidgets);
    expect(find.textContaining('Stok: 35'), findsWidgets);
    expect(find.text('4.9'), findsWidgets);

    // Verifikasi Hero Widget pada halaman katalog
    final heroWidgets = find.byType(Hero);
    expect(heroWidgets, findsWidgets);

    // Verifikasi Footer identitas mahasiswa
    expect(find.byType(AppFooter), findsWidgets);
    expect(find.text('Shinta Nur Widya Wati'), findsWidgets);
    expect(find.text('NIM: 24.52.0001'), findsWidgets);

    // Tap salah satu item untuk menguji navigasi dan Hero animation
    final firstItem = find.textContaining('Bayam Hijau Organik');
    await tester.tap(firstItem);
    await tester.pumpAndSettle();

    // Verifikasi halaman detail terbuka dengan informasi produk dan footer
    expect(find.text('Bayam Hijau Organik'), findsWidgets);
    expect(find.text('Deskripsi Produk'), findsOneWidget);
    expect(find.text('Beli Sekarang'), findsOneWidget);
    expect(find.text('NIM: 24.52.0001'), findsWidgets);
  });
}
