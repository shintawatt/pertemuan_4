import 'package:flutter/material.dart';

/// Konfigurasi tema aplikasi dengan nuansa Biru Tua (Deep Navy)
/// berpadu dengan aksen Rose Gold / Soft Blush yang modern, elegan, dan feminin.
class AppTheme {
  // Palet Warna Utama
  static const Color primaryNavy = Color(0xFF14213D); // Biru tua elegan
  static const Color darkNavy = Color(0xFF0B132B);    // Midnight navy pekat
  static const Color deepNavy = Color(0xFF1C2A4A);    // Biru navy medium
  static const Color softNavy = Color(0xFF2B3A67);    // Biru navy lembut

  // Aksen Feminin & Elegan
  static const Color roseGold = Color(0xFFD4A373);    // Rose gold mewah
  static const Color softRose = Color(0xFFE5989B);    // Blush pink lembut
  static const Color lightRose = Color(0xFFFFF0F2);   // Background rose lembut
  static const Color pearlWhite = Color(0xFFFAF9F6);  // Putih mutiara

  // Warna Netral & Status
  static const Color scaffoldBg = Color(0xFFF4F6FA);  // Latar belakang bersih
  static const Color surfaceWhite = Colors.white;
  static const Color textPrimary = Color(0xFF0F172A);  // Teks pekat mudah dibaca
  static const Color textSecondary = Color(0xFF64748B);// Teks sekunder slate
  static const Color ratingAmber = Color(0xFFF59E0B);  // Bintang rating emas
  static const Color stockGreen = Color(0xFF059669);   // Status stok hijau elegan
  static const Color borderLight = Color(0xFFE2E8F0);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: scaffoldBg,
      fontFamily: null, // Menggunakan font sistem yang bersih
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryNavy,
        primary: primaryNavy,
        secondary: roseGold,
        surface: surfaceWhite,
        surfaceContainerHighest: lightRose,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryNavy,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          letterSpacing: 0.5,
        ),
      ),
      cardTheme: CardThemeData(
        color: surfaceWhite,
        elevation: 2,
        shadowColor: primaryNavy.withValues(alpha: 0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryNavy,
          foregroundColor: Colors.white,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }
}
