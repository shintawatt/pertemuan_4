import 'package:flutter/material.dart';
import 'package:pml/theme/app_theme.dart';

/// Widget Banner Promosi modular dengan nuansa elegan modern.
class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.primaryNavy,
            Color(0xFF1E3A5F),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppTheme.primaryNavy.withValues(alpha: 0.2),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Lingkaran dekoratif abstrak
          Positioned(
            right: -25,
            top: -25,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.roseGold.withValues(alpha: 0.15),
              ),
            ),
          ),
          Positioned(
            right: 40,
            bottom: -30,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.softRose.withValues(alpha: 0.12),
              ),
            ),
          ),

          // Konten Banner
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.roseGold,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        'PILIHAN TERBAIK',
                        style: TextStyle(
                          color: AppTheme.darkNavy,
                          fontSize: 9,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Boutique Sayur & Rempah',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      '100% Segar & Organik Langsung dari Kebun',
                      style: TextStyle(
                        color: Color(0xFFCBD5E1),
                        fontSize: 11.5,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.2),
                  ),
                ),
                child: const Icon(
                  Icons.spa_rounded,
                  color: AppTheme.roseGold,
                  size: 26,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
