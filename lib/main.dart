// Impor pustaka flutter material untuk membangu antarmuka pengguna
import 'package:flutter/material.dart';

// Titik masuk aplikasi flutter
void main() {
  // Menjalankan widget my app sebagai akar aplikasi
  runApp(const MyApp());
}

// Kelas MyApp, merupakan StatelessWidget yang mewakili akar aplikasi Anda
class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp widget, mengonfigurasi tema umum dan halaman utama
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Menyesuaikan skema warna aplikasi
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Mengaktifkan elemen desain Material 3
        useMaterial3: true,
      ),
      // Menetapkan halaman utama aplikasi
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Kelas MyHomePage, merupakan StatefulWidget yang mewakili halaman utama aplikasi Anda
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Kelas _MyHomePageState, merupakan kelas State yang sesuai untuk MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  // Variabel _counter untuk melacak jumlah klik tombol
  int _counter = 0;

  // Fungsi untuk menambahkan nilai _counter saat tombol ditekan
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Widget Scaffold, mewakili struktur desain dasar aplikasi Material
    return Scaffold(
      appBar: AppBar(
        // Menyesuaikan warna app bar menggunakan skema warna
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Menampilkan judul app bar
        title: Text(widget.title),
      ),
      // Kolom berada di tengah, berisi widget di dalam tubuh aplikasi
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Anda telah menekan tombol sebanyak ini:',
            ),
            // Menampilkan nilai saat ini dari variabel _counter
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      // Tombol tindakan mengincrement nilai _counter
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
