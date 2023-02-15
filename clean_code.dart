/*
//10 Prinsip clean code berdasarkan ebook Robert C Martin beserta Contoh-nya
1. Nama yang jelas: Gunakan nama yang jelas dan deskriptif untuk variabel, fungsi, dan kelas. Contoh:

//Ini adalah contoh variabel yang jelas
int jumlahPeserta = 10;

2. Fungsi yang singkat: Buat fungsi yang singkat dan jelas. Contoh:

//Ini adalah contoh fungsi yang singkat
int hitungJumlahPeserta(int jumlah) {
  return jumlah;
}

3. Komentar: Gunakan komentar untuk menjelaskan kode yang rumit. Contoh:

//Ini adalah contoh komentar
//Fungsi ini digunakan untuk menghitung jumlah peserta
int hitungJumlahPeserta(int jumlah) {
  return jumlah;
}

4. Formatting: Gunakan formatting yang baik untuk membuat kode lebih mudah dibaca. Contoh:

//Ini adalah contoh formatting yang baik
int hitungJumlahPeserta(int jumlah) {
  return jumlah;
}

5. Error Handling: Gunakan error handling untuk menangani kesalahan. Contoh:

//Ini adalah contoh error handling
try {
  int jumlahPeserta = hitungJumlahPeserta(10);
} catch (e) {
  print('Terjadi kesalahan: $e');
}

6. Refactoring: Refactor kode secara berkala untuk membuatnya lebih mudah dipahami. Contoh:

//Ini adalah contoh refactoring
int hitungJumlahPeserta(int jumlah) {
  int hasil = 0;
  for (int i = 0; i < jumlah; i++) {
    hasil++;
  }
  return hasil;
}

7. Konsistensi: Gunakan konsistensi dalam penulisan kode. Contoh:

//Ini adalah contoh konsistensi
int hitungJumlahPeserta(int jumlah) {
  int hasil = 0;
  for (int i = 0; i < jumlah; i++) {
    hasil++;
  }
  return hasil;
}

8. Kode yang dapat dipercaya: Gunakan kode yang dapat dipercaya dan dapat diandalkan. Contoh:

//Ini adalah contoh kode yang dapat dipercaya
int hitungJumlahPeserta(int jumlah) {
  int hasil = 0;
  for (int i = 0; i < jumlah; i++) {
    hasil++;
  }
  return hasil;
}

9. Kode yang mudah dimodifikasi: Buat kode yang mudah dimodifikasi dan dapat diperbarui. Contoh:

//Ini adalah contoh kode yang mudah dimodifikasi
int hitungJumlahPeserta(int jumlah, int tambah) {
  int hasil = 0;
  for (int i = 0; i < jumlah; i++) {
    hasil += tambah;
  }
  return hasil;
}

10. Kode yang mudah dibaca: Buat kode yang mudah dibaca dan dipahami. Contoh:

//Ini adalah contoh kode yang mudah dibaca
int hitungJumlahPeserta(int jumlah, int tambah) {
  int hasil = 0;
  for (int i = 0; i < jumlah; i++) {
    hasil += tambah;
  }
  return hasil;
}

*/