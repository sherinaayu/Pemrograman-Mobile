void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);
  final list = List<Object?>.filled(
      5, null); // List dengan ukuran 5 dan nilai default null
  list[1] = 'Sherina Ayu'; // Mengisi elemen ke-1 dengan nama
  list[2] = '2241720130'; // Mengisi elemen ke-2 dengan NIM

  // Print hasilnya
  print(list); // Mencetak seluruh list
}
