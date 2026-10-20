import 'package:pml/domain/barang.dart';

/// Daftar data produk marketplace dengan informasi lengkap
/// mencakup foto produk asli yang sesuai dengan judul masing-masing produk,
/// stok, rating, harga, dan deskripsi detail.
final List<Barang> listBarang = [
  const Barang(
    id: 1,
    nama: 'Bayam Hijau Organik',
    harga: 7500,
    stok: 35,
    rating: 4.9,
    terjual: 240,
    foto: 'assets/products/bayam.jpg',
    kategori: 'Sayuran',
    deskripsi:
        'Bayam hijau segar hasil panen hidroponik berkualitas premium tanpa pestisida. '
        'Dipanen langsung pada pagi hari untuk menjaga kesegaran dan kandungan zat besi serta vitamin yang tinggi. '
        'Sangat pas untuk sajian sup bening sehat keluarga tercinta.',
  ),
  const Barang(
    id: 2,
    nama: 'Kangkung Segar Hidroponik',
    harga: 5000,
    stok: 42,
    rating: 4.8,
    terjual: 310,
    foto: 'assets/products/kangkung.jpg',
    kategori: 'Sayuran',
    deskripsi:
        'Kangkung segar dengan tekstur batang renyah berongga dan daun hijau segar khas kangkung. '
        'Bebas dari bahan kimia berbahaya dan dicuci bersih sebelum dikemas secara higienis. '
        'Pilihan sempurna untuk menu cah kangkung terasi atau tumis bawang putih.',
  ),
  const Barang(
    id: 3,
    nama: 'Sawi Hijau Manis',
    harga: 6500,
    stok: 28,
    rating: 4.7,
    terjual: 185,
    foto: 'assets/products/sawi.jpg',
    kategori: 'Sayuran',
    deskripsi:
        'Sawi hijau manis (choy sum) pilihan dengan kerenyahan batang istimewa dan daun hijau lebat. '
        'Cocok diolah menjadi aneka masakan rumahan seperti mie rebus, capcay, sup, maupun tumisan berkuah gurih.',
  ),
  const Barang(
    id: 4,
    nama: 'Daun Bawang Super Segar',
    harga: 8000,
    stok: 19,
    rating: 4.8,
    terjual: 140,
    foto: 'assets/products/daun_bawang.jpg',
    kategori: 'Bumbu Dapur',
    deskripsi:
        'Seikat daun bawang beraroma harum semerbak dengan batang putih kokoh dan daun hijau tubular segar. '
        'Memberikan aroma dan kelezatan maksimal untuk taburan sup, martabak telur, soto, dan aneka masakan nusantara.',
  ),
  const Barang(
    id: 5,
    nama: 'Seledri Wangi Organik',
    harga: 9000,
    stok: 22,
    rating: 4.9,
    terjual: 115,
    foto: 'assets/products/seledri.jpg',
    kategori: 'Bumbu Dapur',
    deskripsi:
        'Seledri organik dengan aroma wangi yang khas, batang renyah, dan daun yang lebat segar. '
        'Bisa digunakan sebagai penyedap alami kuah bakso dan sup kaldu, atau sebagai bahan jus detoks sehat wanita aktif.',
  ),
  const Barang(
    id: 6,
    nama: 'Jahe Merah Premium',
    harga: 18000,
    stok: 50,
    rating: 5.0,
    terjual: 420,
    foto: 'assets/products/jahe.jpg',
    kategori: 'Rempah',
    deskripsi:
        'Rimpang jahe segar beruas-ruas dengan kadar minyak atsiri dan rasa hangat yang kuat. '
        'Sangat efektif untuk menghangatkan badan, meredakan pegal, meningkatkan imun tubuh, serta menjaga kebugaran wanita.',
  ),
  const Barang(
    id: 7,
    nama: 'Kunyit Kuning Segar',
    harga: 12000,
    stok: 30,
    rating: 4.8,
    terjual: 210,
    foto: 'assets/products/kunyit.jpg',
    kategori: 'Rempah',
    deskripsi:
        'Rimpang kunyit segar kaya akan kurkumin alami dengan warna daging oranye-kuning cerah yang cantik. '
        'Bahan utama pembuatan jamu kunyit asam alami untuk kecantikan kulit dan peredam nyeri alami.',
  ),
  const Barang(
    id: 8,
    nama: 'Lengkuas Muda Pilihan',
    harga: 11000,
    stok: 25,
    rating: 4.7,
    terjual: 95,
    foto: 'assets/products/lengkuas.jpg',
    kategori: 'Rempah',
    deskripsi:
        'Rimpang lengkuas muda (laos) beraroma sedap dengan tekstur yang mudah diiris atau dimemarkan. '
        'Kunci kelezatan aneka masakan nusantara mulai dari sayur lodeh gurih hingga rendang khas.',
  ),
  const Barang(
    id: 9,
    nama: 'Kencur Wangi Alami',
    harga: 15000,
    stok: 16,
    rating: 4.9,
    terjual: 160,
    foto: 'assets/products/kencur.jpg',
    kategori: 'Rempah',
    deskripsi:
        'Rimpang kencur wangi pilihan dengan aroma harum semerbak dan cita rasa khas yang menyegarkan. '
        'Bahan pokok racikan beras kencur, peyek kencur renyah, dan bumbu seblak tradisional yang gurih menggugah selera.',
  ),
  const Barang(
    id: 10,
    nama: 'Terong Ungu Segar',
    harga: 10000,
    stok: 33,
    rating: 4.8,
    terjual: 275,
    foto: 'assets/products/terong.jpg',
    kategori: 'Sayuran',
    deskripsi:
        'Terong ungu mulus dan segar dengan warna ungu mengkilap dan daging buah yang lembut saat dimasak. '
        'Sangat lezat diolah menjadi terong balado pedas manis, terong bakar saus kacang, atau goreng tepung renyah.',
  ),
];

/// Kompatibilitas dengan kode sebelumnya
// ignore: non_constant_identifier_names
final List<Barang> list_barang = listBarang;
