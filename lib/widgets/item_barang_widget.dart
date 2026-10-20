import 'package:flutter/material.dart';
import 'package:pml/domain/barang.dart';
import 'package:pml/theme/app_theme.dart';
import 'package:pml/widgets/product_image.dart';

/// Widget Kartu Produk modular untuk GridView Marketplace.
/// Mengimplementasikan Hero Animation dan navigasi bawaan Navigator.pushNamed (Praktikum 1).
class ItemBarangWidget extends StatelessWidget {
  final Barang barang;

  const ItemBarangWidget({super.key, required this.barang});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surfaceWhite,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: AppTheme.primaryNavy.withValues(alpha: 0.07),
            blurRadius: 14,
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(
          color: AppTheme.borderLight,
          width: 0.8,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: () {
            // Menggunakan Navigator bawaan Praktikum 1 (Navigator.pushNamed)
            // sambil mengirimkan objek barang sebagai arguments.
            Navigator.pushNamed(context, '/detail', arguments: barang);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Gambar Produk dengan Hero Widget & Badge Stok
              Expanded(
                flex: 11,
                child: Stack(
                  children: [
                    // Hero Widget untuk Transisi Animasi Antar Layar
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(18),
                        ),
                        child: Hero(
                          tag: 'product-image-${barang.id}',
                          child: ProductImage(
                            path: barang.foto,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    // Badge Stok (Kiri Atas)
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryNavy.withValues(alpha: 0.82),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.2),
                          ),
                        ),
                        child: Text(
                          'Stok: ${barang.stok}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ),

                    // Icon Favorit (Kanan Atas)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.9),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.08),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          size: 17,
                          color: AppTheme.softRose,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Bagian Informasi Produk
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Kategori kecil
                      Text(
                        barang.kategori.toUpperCase(),
                        style: const TextStyle(
                          color: AppTheme.roseGold,
                          fontSize: 9.5,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.8,
                        ),
                      ),

                      // Nama Barang
                      Text(
                        barang.nama,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppTheme.textPrimary,
                          fontSize: 13.5,
                          fontWeight: FontWeight.w600,
                          height: 1.25,
                        ),
                      ),

                      // Rating & Terjual
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            size: 15,
                            color: AppTheme.ratingAmber,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            barang.formattedRating,
                            style: const TextStyle(
                              color: AppTheme.textPrimary,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '• ${barang.terjual} terjual',
                            style: const TextStyle(
                              color: AppTheme.textSecondary,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),

                      // Baris Harga & Tombol Aksi Tambah
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            barang.formattedHarga,
                            style: const TextStyle(
                              color: AppTheme.primaryNavy,
                              fontSize: 14.5,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  AppTheme.primaryNavy,
                                  AppTheme.deepNavy,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.add_rounded,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
