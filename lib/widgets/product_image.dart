import 'package:flutter/material.dart';
import 'package:pml/theme/app_theme.dart';

/// Widget tampilan gambar produk yang mendukung file lokal (assets)
/// maupun URL jaringan (network) dengan fallback otomatis jika terjadi kendala.
class ProductImage extends StatelessWidget {
  final String path;
  final BoxFit fit;
  final double? width;
  final double? height;

  const ProductImage({
    super.key,
    required this.path,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return Image.network(
        path,
        width: width,
        height: height,
        fit: fit,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: width,
            height: height,
            color: const Color(0xFFF1F5F9),
            child: const Center(
              child: SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation(AppTheme.primaryNavy),
                ),
              ),
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) => _buildFallback(),
      );
    }

    return Image.asset(
      path,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (context, error, stackTrace) => _buildFallback(),
    );
  }

  Widget _buildFallback() {
    return Container(
      width: width,
      height: height,
      color: const Color(0xFFEDF2F7),
      child: const Center(
        child: Icon(
          Icons.eco_rounded,
          size: 40,
          color: AppTheme.softNavy,
        ),
      ),
    );
  }
}
