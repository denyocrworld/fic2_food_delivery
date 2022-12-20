//TUTORIAL BIKIN HELLO WORLD
void main() {
  //looping
  segitigaSamaKaki(10);
}

//@completed: Buatlah sebuah function segitigaSamaKaki(int tinggi) di Dart yang akan membuat looping dan print * dalam bentuk Donat, gunakan variable String output. Tidak perlu dipanggil dalam main().
void segitigaSamaKaki(int tinggi) {
  String output = '';
  for (int i = 0; i < tinggi; i++) {
    for (int j = 0; j < tinggi - i; j++) {
      output += ' ';
    }
    for (int k = 0; k < (2 * i) + 1; k++) {
      output += '*';
    }
    output += '\n';
  }
  print(output);
}
