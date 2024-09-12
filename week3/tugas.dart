void main() {
  String nama = "Sherina Ayu Wanda Pramesti";
  String nim = "2241720130";

  // Fungsi untuk memeriksa apakah bilangan itu prima
  bool isPrime(int num) {
    if (num < 2) return false;
    for (int i = 2; i <= num ~/ 2; i++) {
      if (num % i == 0) return false;
    }
    return true;
  }

  // Menampilkan bilangan prima dari 0 sampai 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i adalah bilangan prima');
      print('Nama: $nama, NIM: $nim');
    }
  }
}
