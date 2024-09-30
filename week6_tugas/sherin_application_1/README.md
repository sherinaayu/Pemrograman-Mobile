# sherin_application_1
1. Titik Masuk Utama
dart
Copy code
void main() {
  runApp(MyApp());
}
Fungsi main menjalankan aplikasi dengan memanggil runApp menggunakan MyApp, yang merupakan widget root dari aplikasi.
2. Kelas MyApp
dart
Copy code
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 227, 199, 190)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
ChangeNotifierProvider: Widget ini menyediakan instance dari MyAppState kepada anak-anaknya, memungkinkan mereka untuk mendengarkan perubahan dan memperbarui UI sesuai kebutuhan.
MaterialApp: Mengatur aplikasi dengan judul, tema, dan halaman utama.
3. Kelas MyAppState
dart
Copy code
class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}
Manajemen State: Kelas ini menyimpan pasangan kata saat ini dan daftar pasangan favorit. Menggunakan metode notifyListeners() untuk memperbarui UI setiap kali state berubah.
Metode:
getNext(): Menghasilkan pasangan kata acak baru.
toggleFavorite(): Menambah atau menghapus pasangan kata saat ini dari daftar favorit.
4. Kelas MyHomePage
dart
Copy code
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = FavoritesPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: true,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorites'),
                ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: page,
            ),
          ),
        ],
      ),
    );
  }
}
Widget Stateful: Mengelola indeks terpilih untuk navigasi rail untuk beralih antara halaman generator dan halaman favorit.
NavigationRail: Komponen navigasi vertikal yang memungkinkan pengguna untuk beralih antara tampilan generator dan favorit.
5. Kelas GeneratorPage
dart
Copy code
class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: Icon(icon),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
GeneratorPage: Menampilkan pasangan kata saat ini dan menyediakan tombol untuk mengubah favorit dan mendapatkan pasangan kata baru.
BigCard: Widget kustom yang menampilkan pasangan kata saat ini dalam kartu yang terformat.
6. Kelas BigCard
dart
Copy code
class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: pair.asPascalCase,
        ),
      ),
    );
  }
}
BigCard: Widget stateless yang menata dan menampilkan pasangan kata yang diberikan.
7. Kelas FavoritesPage
dart
Copy code
class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          ),
      ],
    );
  }
}
FavoritesPage: Menampilkan daftar pasangan kata favorit. Jika tidak ada favorit, akan menampilkan pesan bahwa belum ada favorit.

Output:
![alt text](image1.png)
Menunjukkan bahwa kita menyukai sticktank
![alt text](image2.png)
Lalu, tidak menyukai oldgod dan langsung mengklik next.
![alt text](image3.png)
Jika ingin mengetahui siapa yang disukai, maka akan muncul berapa yang disukai dan apa yang disukai.