void main() {
  var record = ('first', a: 2, b: true, 'last');
  print('Original record: $record');

  // Definisikan fungsi tukar untuk menukar nilai dari tuple
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // Membuat record untuk pertukaran
  var tuple = (1, 2);
  var swapped = tukar(tuple);
  print('Original tuple: $tuple');
  print('Swapped tuple: $swapped');

  // Untuk mendemonstrasikan penggunaan record lebih lanjut
  print('Record with named fields: ${record}');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Sherina Ayu', 2241720130);
  print(mahasiswa);
  var mahasiswa2 = ('Sherina Ayu', a: 2, b: true, '2241720130');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
