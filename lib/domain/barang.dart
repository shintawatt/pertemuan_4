class Barang {
  final int id;
  final String nama;
  final int harga;
  final int stok;
  final double rating;
  final int terjual;
  final String foto;
  final String deskripsi;
  final String kategori;

  const Barang({
    required this.id,
    required this.nama,
    required this.harga,
    required this.stok,
    required this.rating,
    required this.terjual,
    required this.foto,
    required this.deskripsi,
    this.kategori = 'Umum',
  });

  /// Getter untuk menjaga kompatibilitas dengan kode sebelumnya
  // ignore: non_constant_identifier_names
  String get nama_barang => nama;

  /// Memformat harga menjadi format Rupiah (contoh: Rp 15.000)
  String get formattedHarga {
    final str = harga.toString();
    final buffer = StringBuffer();
    int count = 0;
    for (int i = str.length - 1; i >= 0; i--) {
      buffer.write(str[i]);
      count++;
      if (count % 3 == 0 && i > 0) {
        buffer.write('.');
      }
    }
    return 'Rp ${buffer.toString().split('').reversed.join('')}';
  }

  /// Format rating dengan 1 angka desimal
  String get formattedRating => rating.toStringAsFixed(1);
}
