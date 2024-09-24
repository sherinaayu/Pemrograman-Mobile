void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);
  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{}; // Set kosong
  Set<String> names2 = {}; // Set kosong juga
  var names3 = {}; // Membuat map, bukan set

  // Menggunakan .add() untuk menambahkan elemen satu per satu
  names1.add('Sherina Ayu');
  names1.add('2241720130');

  // Menggunakan .addAll() untuk menambahkan elemen sekaligus
  names2.addAll({'Sherina Ayu', '2241720130'});

  print(names1); // Output: {Sherina Ayu, 2241720130}
  print(names2); // Output: {Sherina Ayu, 2241720130}
  print(names3); // Output: {} (Map kosong)
}
