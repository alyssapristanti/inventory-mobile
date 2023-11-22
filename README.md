# Tugas 7
# Jawaban Pertanyaan
1. **Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**
    >> Stateless Widget
    Stateless Widget merupakan sebuah widget yang tidak memiliki data-data sendiri, maka setiap kali buildnya akan menghasilkan hasil yang sama. Perubahan pada Stateless Widget terjadi ketika ada peristiwa eksternal pada widget-parent di dalam pohon widget. Widget ini memberikan kendali terhadap bagaimana mereka dibangun kepada widget-parent dalam pohon widget. Widget anak (Stateless Widget) akan menerima deskripsinya dari widget-parent dan tidak akan mengubahnya sendiri. Stateless widgets hanya memiliki properti final yang ditentukan selama konstruksi, dan itulah satu-satunya hal yang perlu dibangun pada layar perangkat.

    >> Stateful Widget
    Sedangkan Stateful Widget memiliki data-data sendiri dan dapat diubah oleh user ataupun melalui event handler sehingga setiap kali buildnya tidak akan menghasilkan hasil yang sama karena data-datanya berubah. Stateful widget bersifat immutable, tetapi memiliki kelas State yang menggambarkan keadaan saat ini dari widget tersebut. Dalam konteks Stateful Widget, perubahan pada widget dapat terjadi berdasarkan tindakan pengguna atau peristiwa tertentu yang terjadi. Widget ini memiliki keadaan internal yang dapat diperbarui, dan setiap kali keadaan berubah, widget akan dibangun ulang untuk mencerminkan perubahan tersebut.

2. **Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing**
    >> MyHomePage
    --> Merupakan widget utama yang merupakan kelas dari Stateless Widget. Ini digunakan untuk membuat tampilan beranda aplikasi Inventory Management yang berisi AppBar, judul, dan grid layout untuk tombol aksi.

    >> Scaffold
    --> Digunakan untuk mengatur kerangka dasar tampilan aplikasi, termasuk AppBar dan isi halaman.

    >> AppBar
    --> Digunakan untuk menampilkan bagian atas aplikasi dengan judul "Inventory Management."

    >> Text
    --> Digunakan untuk menampilkan teks dengan properti styling seperti fontSize dan fontWeight.

    >> SingleChildScrollView
    --> Wrapper untuk mengaktifkan scroll pada halaman jika kontennya lebih panjang dari layar.

    >> Padding
    --> Digunakan untuk memberikan padding ke dalam seluruh konten dalam halaman.

    >> Column
    --> Digunakan untuk menampilkan children (widget) secara vertikal.

    >> GridView.Count
    --> Digunakan untuk menampilkan grid tombol aksi.

    >> Material
    --> Digunakan sebagai background untuk mengatur warna tombol aksi.

    >> Inkwell
    --> Digunakan untuk mengaktifkan efek sentuhan pada tombol aksi.

    >> Icon
    --> Digunakan untuk menampilkan ikon pada tombol aksi.

3. **Implementasi Checklist**
    >>  Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.

        - Membuka terminal pada command prompt

        - Melakukan generate Flutter baru dengan nama inventory dengan flutter create inventory, kemudian masuk pada direktori proyek tersebut dengan cd inventory

        - Menjalankan proyek dengan menggunakan command flutter run

    >> Membuat tiga tombol sederhana dengan ikon dan teks

        - Melakukan define class InventoryItem
        class InventoryItem {
            final String name;
            final IconData icon;

            InventoryItem(this.name, this.icon);
        }

        - Menambahkan barang-barang di bagian bawah MyHomePage({Key? key}) : super(key: key);
            final List<InventoryItem> items = [
            InventoryItem("Lihat Item", Icons.checklist),
            InventoryItem("Tambah Item", Icons.add_shopping_cart),
            InventoryItem("Logout", Icons.logout),
        ];

        - Menambahkan kode untuk Widget build

    >> Memunculkan Snackbar dengan tulisan

        - Membuat kode agar saat tombol ditekan (onTap) dapat  menampilkan SnackBar dengan pesan yang sesuai menggunakan ScaffoldMessenger
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },

    >> Menjawab beberapa pertanyaan berikut pada README.md pada root folder.

        - Membuat file README.md dan menjawab pertanyaan yang sesuai

# Tugas 8
# Jawaban Pertanyaan
1. **Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**
    >> Navigator.push()
    --> Navigator.push() akan menambahkan route baru diatas route yang sudah ada pada stack.
    
    - Penggunaan: Ketika ingin membuka halaman baru tanpa menghapus halaman saat ini dari tumpukan. Hal ini memungkinkan pengguna untuk kembali ke halaman sebelumnya dengan tombol kembali.

    - Contoh: Ketika berada di halaman beranda aplikasi dan ingin membuka halaman detail. Pengguna dapat kembali ke beranda dengan menggunakan tombol kembali.

    >> Navigator.pushReplacement()
    --> Navigator.pushReplacement() akan menggantikan route yang sudah ada pada atas stack dengan route baru tersebut.

    - Penggunaan: Ketika ingin beralih ke halaman baru dan menghapus halaman saat ini dari tumpukan. Pengguna tidak dapat kembali ke halaman sebelumnya.

    - Contoh: Setelah selesai dengan proses login ingin mengarahkan pengguna ke halaman beranda dan tidak ingin mereka kembali ke halaman login dengan tombol kembali.

2. **Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!**
    >> Column and Row
    - Fungsi: Mengatur children secara vertikal (Column) atau horizontal (Row).
    
    - Penggunaan: Cocok untuk layout linier seperti daftar item atau tombol yang berbaris.
    
    >> Stack
    - Fungsi: Menumpuk widget di atas satu sama lain.
    
    - Penggunaan: Berguna untuk overlay, seperti teks di atas gambar.
    
    >> Container
    - Fungsi: Memberikan kotak dekorasi, padding, margin, dan ukuran untuk anaknya.
    
    - Penggunaan: Serba guna, baik untuk pembungkus satu widget dengan dekorasi atau untuk pengaturan ukuran.

    >> GridView
    - Fungsi: Menampilkan item dalam grid.
    
    - Penggunaan: Cocok untuk menampilkan galeri atau kumpulan data yang lebih terstruktur.

    >> ListView
    - Fungsi: Menampilkan daftar item yang dapat discroll.

    - Penggunaan: Ideal untuk daftar item yang panjang seperti feed berita atau daftar email.
    
    >> Padding
    - Fungsi: Menambahkan padding di sekitar widget anaknya.
    
    - Penggunaan: Berguna untuk memberi ruang di sekitar elemen UI.

    >> Expanded & Flexible
    - Fungsi: Mengontrol proporsi ruang yang diambil oleh widget dalam Row atau Column.

    - Penggunaan: Berguna untuk membagi ruang antar widget secara proporsional atau fleksibel.

3. **Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**

    - TextFormField untuk Nama Item: Elemen ini memungkinkan pengguna memasukkan nama item inventori. Penggunaan TextFormField sangat cocok karena memfasilitasi input teks bebas yang diperlukan untuk nama item.
    
    - TextFormField untuk Jumlah Barang: Ini juga TextFormField, tetapi digunakan untuk "Jumlah Barang". Elemen ini penting untuk mencatat berapa banyak unit item yang ada dalam inventori. Validasi ditambahkan untuk memastikan bahwa input adalah angka, sesuai dengan kebutuhan data kuantitatif seperti jumlah barang.
    
    - TextFormField untuk Deskripsi: Elemen ini untuk "Deskripsi" item memberikan ruang bagi pengguna untuk memberikan informasi tambahan, seperti spesifikasi atau detail lain yang relevan. Ini memberikan kesempatan untuk menjelaskan item secara lebih rinci.
    
    - TextFormField untuk Kategori: Elemen ini digunakan untuk input "Kategori" item, membantu dalam klasifikasi atau pengelompokan item berdasarkan jenis atau fungsi mereka. Ini sangat berguna dalam manajemen inventori.

4. **Bagaimana penerapan clean architecture pada aplikasi Flutter?**
    --> Penerapan clean architectur pada aplikasi flutter adalah dengan cara membagi aplikasi menjadi beberapa layers yaitu:

    >> Presentation Layer : Layer yang berhubungan dengan interaksi user dengan aplikasi, terdiri dari:
        - Pages
        
        - State Management
        
        - Widgets
        
    >> Domain Layer : Layer yang tidak memiliki dependencies dengan layer lain, dan layer yang mendefinisikan logic, entities, dan business model dari aplikasi, terdiri dari:
        - Entities

        - Repository Interfaces

        - Use Cases
    
    >> Data Layer : Layer yang terdiri atas sumber dari data yang digunakan dalam aplikasi, terdiri dari:
        - Repositories
        
        - Data Sources
        
        - Models

5. **Implementasi Checklist**
    >> Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut:

        import 'package:flutter/material.dart';

        class InventoryFormPage extends StatefulWidget {
        const InventoryFormPage({Key? key}) : super(key: key);

        @override
        State<InventoryFormPage> createState() => _InventoryFormPageState();
        }

        class _InventoryFormPageState extends State<InventoryFormPage> {
        final _formKey = GlobalKey<FormState>();
        String _name = "";
        int _amount = 0;
        String _description = "";
        String _category = "";

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(
                title: const Center(
                child: Text(
                    'Form Tambah Item',
                ),
                ),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
            ),
            drawer: Drawer(), // Add the drawer here
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Nama Item",
                            labelText: "Nama Item",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _name = value!;
                            });
                        },
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                            return "Nama tidak boleh kosong!";
                            }
                            return null;
                        },
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Jumlah Barang",
                            labelText: "Jumlah Barang",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _amount = int.parse(value!);
                            });
                        },
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                            return "Jumlah barang tidak boleh kosong!";
                            }
                            if (int.tryParse(value) == null) {
                            return "Jumlah barang harus berupa angka!";
                            }
                            return null;
                        },
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Deskripsi",
                            labelText: "Deskripsi",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _description = value!;
                            });
                        },
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                            return "Deskripsi tidak boleh kosong!";
                            }
                            return null;
                        },
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Kategori",
                            labelText: "Kategori",
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            ),
                        ),
                        onChanged: (String? value) {
                            setState(() {
                            _category = value!;
                            });
                        },
                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                            return "Deskripsi tidak boleh kosong!";
                            }
                            return null;
                        },
                        ),
                    ),

                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                            ),
                            onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                    return AlertDialog(
                                        title: const Text('Item berhasil tersimpan'),
                                        content: SingleChildScrollView(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                            Text('Nama: $_name'),
                                            Text('Harga: $_amount'),
                                            Text('Deskripsi: $_description'),
                                            Text('Kategori: $_category')
                                            ],
                                        ),
                                        ),
                                        actions: [
                                        TextButton(
                                            child: const Text('OK'),
                                            onPressed: () {
                                            Navigator.pop(context);
                                            },
                                        ),
                                        ],
                                    );
                                    },
                                );
                                _formKey.currentState!.reset();
                                }
                            },
                            child: const Text(
                                "Save",
                                style: TextStyle(color: Colors.white),
                            ),
                            ),
                        ),
                        ),
                    ],
                    
                ),
                ),
            ),
            );
        }
        }

    >> Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.

    if (item.name == "Tambah Item") {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InventoryFormPage()));
          }

    >> Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.

        return AlertDialog(
            title: const Text('Item berhasil tersimpan'),
            content: SingleChildScrollView(
            child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                Text('Nama: $_name'),
                Text('Harga: $_amount'),
                Text('Deskripsi: $_description'),
                Text('Kategori: $_category')
                ],
            ),
            ),
            actions: [
            TextButton(
                child: const Text('OK'),
                onPressed: () {
                Navigator.pop(context);
                },
            ),
            ],
        );

    >> Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
        import 'package:flutter/material.dart';
        import 'package:inventory/screens/inventory_form.dart';
        import 'package:inventory/screens/menu.dart';

        class RightDrawer extends StatelessWidget {
        const RightDrawer({Key? key});

        @override
        Widget build(BuildContext context) {
            return Drawer(
            child: ListView(
                children: [
                const DrawerHeader(
                    decoration: BoxDecoration(
                    color: Colors.indigo,
                    ),
                    child: Column(
                    children: [
                        Text(
                        'Inventory Management',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                        ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                        "Catat seluruh keperluan belanjamu di sini!",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                        ),
                        ),
                    ],
                    ),
                ),
                ListTile(
                    leading: const Icon(Icons.home_outlined),
                    title: const Text('Halaman Utama'),
                    // Bagian redirection ke MyHomePage
                    onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                        ),
                    );
                    },
                ),
                ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text('Tambah Produk'),
                // Bagian redirection ke ShopFormPage
                onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                        builder: (context) => const InventoryFormPage(),
                        ),
                    );
                },
                ),
                ],
            ),
            );
        }
        }

# Tugas 9
# Jawaban Pertanyaan
1. **Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**

    - Ya, kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu dengan menggunakan Map untuk mewakili data JSON secara langsung. Keuntungan menggunakan Map adalah fleksibilitas dan kemudahan dalam menangani data JSON yang tidak terstruktur atau yang sering berubah. Namun, pendekatan ini kurang ideal untuk aplikasi besar atau kompleks karena dapat menyebabkan kode yang sulit dipahami dan dijaga.

    - Menggunakan model (kelas Dart yang mewakili struktur data JSON) umumnya dianggap best practice karena memberikan struktur yang jelas, mudah dikelola, dan memudahkan pemeliharaan kode, terutama untuk proyek besar.

2. **Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter**
    >> Beberapa Kegunaan Cookie Request
    1. Manajemen sesi dari pengguna
    2. Menyimpan token autentikasi dan informasi login
    3. Menyimpan preferensi pengguna
    4. Melacak aktivitas pengguna di suatu situs web atau aplikasi
    5. Membantu dalam implementasi langkah-langkah keamanan tertentu, seperti mencegah terjadinya serangan CSRF (Cross-Site Request Forgery) dengan memastikan bahwa setiap permintaan ke server bersumber dari pengguna yang sah dan telah terdaftar

    >> Kegunaan membagikan instance CookieRequest ke seluruh komponen
    Untuk mempertahankan sesi pengguna dan memastikan bahwa semua permintaan HTTP memiliki cookies yang diperlukan. Hal ini berguna untuk menjaga konsistensi dalam autentika dan manajemen sesi pengguna.

3. **Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter**

    1) Pengambilan Data JSON:
    
    - Pertama, aplikasi Flutter perlu mengambil data JSON. Ini biasanya dilakukan dengan membuat permintaan HTTP ke server web atau API. Misalnya, menggunakan pustaka http yang tersedia di Flutter.

    2) Penerimaan Respons HTTP:
    
    - Setelah permintaan HTTP dikirim, aplikasi akan menunggu dan menerima respons dari server.
    
    - Respons ini berisi data dalam format JSON, biasanya sebagai bagian dari body respons.

    3) Parsing Data JSON:
    
    - Setelah data JSON diterima, langkah selanjutnya adalah parsing data tersebut menjadi format yang bisa digunakan oleh Flutter.
    
    - Flutter memiliki kelas bawaan seperti jsonDecode yang dapat mengubah string JSON menjadi objek Dart, seperti Map atau List.
    
    4) Menampilkan Data di UI:
    
    - Setelah data berhasil diparsing, dapat menggunakan data tersebut untuk membangun widget di Flutter.
    
    - Misalnya, bisa menggunakan ListView.builder untuk membuat daftar item yang diambil dari data JSON.
    
    - Setiap item dalam JSON bisa diwakili sebagai satu Card, ListTile, atau widget kustom lainnya di Flutter.
    
    5) Pembaruan UI:
    
    - Untuk memastikan bahwa UI diperbarui dengan data terbaru, mungkin menggunakan setState dalam aplikasi stateful atau pendekatan manajemen state seperti Provider, Bloc, atau Riverpod.
    
    - Ini memastikan bahwa setiap kali data berubah atau diperbarui, UI juga diperbarui untuk mencerminkan perubahan tersebut.

    6) Penanganan Kesalahan:
    
    - Selama proses ini, penting untuk menangani kesalahan yang mungkin terjadi, seperti masalah koneksi jaringan atau data JSON yang tidak valid.
    
    - Flutter harus menyediakan feedback kepada pengguna jika ada masalah dalam pengambilan atau pengolahan data.

4. **Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter**

    1) Input Data pada Flutter:
    
    - Di aplikasi Flutter, pengguna memasukkan data autentikasi seperti username dan password. Biasanya, ini dilakukan melalui TextField atau TextFormField widget untuk memungkinkan pengguna memasukkan informasi mereka.
    
    2) Pengiriman Data ke Django:
    
    - Setelah pengguna mengisi informasi dan menekan tombol submit, aplikasi Flutter mengirimkan data tersebut ke server Django. 
    
    - Pengiriman ini biasanya dilakukan melalui HTTP POST request menggunakan pustaka seperti http atau dio di Flutter.
    
    - Flutter mengemas data pengguna (username dan password) dalam format yang dapat diterima oleh Django, seperti JSON.

    3) Penerimaan dan Proses Autentikasi di Django:
    
    - Server Django menerima permintaan dari aplikasi Flutter.
    
    - Django kemudian memproses data ini, biasanya dengan memeriksa apakah kombinasi username dan password cocok dengan yang tersimpan dalam database pengguna.
    
    - Jika Django menggunakan sistem autentikasi bawaan atau kerangka kerja seperti Django Rest Framework, proses ini juga dapat melibatkan pembuatan token autentikasi.
    
    4) Respons dari Django:
    
    - Setelah memverifikasi kredensial, Django mengirimkan respons kembali ke aplikasi Flutter.
    
    - Respons ini bisa berupa konfirmasi keberhasilan login dengan informasi tambahan seperti token autentikasi atau pesan kesalahan jika autentikasi gagal.

    5) Pengolahan Respons di Flutter dan Navigasi:
    
    - Aplikasi Flutter menerima respons dari Django dan memprosesnya.
    
    - Jika autentikasi berhasil, Flutter mungkin menyimpan token autentikasi (untuk sesi pengguna berikutnya) dan mengarahkan pengguna ke layar menu atau dashboard utama aplikasi
    
    - Jika autentikasi gagal, Flutter dapat menampilkan pesan kesalahan dan meminta pengguna untuk mencoba lagi.

    6) Menampilkan Menu atau Dashboard:
    
    - Setelah autentikasi berhasil, Flutter menampilkan antarmuka pengguna yang relevan, seperti menu utama aplikasi, yang bisa diakses oleh pengguna yang telah terautentikasi.


5. **Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing**

    1) MaterialApp: Merupakan widget yang mengatur beberapa properti yang diperlukan dalam aplikasi yang menggunakan Material Design. Di sini, ia menetapkan judul aplikasi, tema, dan home screen.
    
    2) Scaffold: Menyediakan struktur dasar layout visual untuk aplikasi Material Design. Di sini, ia digunakan untuk membuat struktur halaman dengan app bar dan body.

    3) AppBar: Widget yang menampilkan app bar di bagian atas layar. Di sini, digunakan untuk menampilkan judul 'Login'.

    4) Container: Widget yang menyediakan kotak untuk menempatkan child widget lain dengan properti tata letak tertentu. Di sini, digunakan untuk mengatur padding di sekitar kolom input.

    5) Column: Widget yang mengatur child widget-nya dalam bentuk kolom vertikal. Digunakan untuk menata elemen-elemen seperti field input dan tombol login.

    6) TextField: Widget input teks yang memungkinkan pengguna memasukkan data. Di sini, digunakan dua kali untuk input username dan password.

    7) SizedBox: Widget yang digunakan untuk memberikan jarak tetap antara widget. Di sini, digunakan untuk memberi jarak vertikal antara input field dan tombol.

    8) ElevatedButton: Sebuah tombol dengan efek elevasi (bayangan) yang digunakan untuk melakukan aksi. Di sini, tombol ini digunakan untuk memicu proses login.

    9) Text: Widget sederhana untuk menampilkan teks. Di sini, digunakan dalam AppBar, TextField (sebagai label), dan ElevatedButton.

    10) AlertDialog: Widget yang menampilkan dialog kepada pengguna. Di sini, digunakan untuk menampilkan pesan kesalahan jika login gagal.

    11) TextButton: Sebuah tombol dengan tampilan teks yang digunakan sebagai aksi dalam dialog. Di sini, digunakan dalam AlertDialog untuk tombol 'OK'.

    12) SnackBar: Sebuah widget yang menampilkan pesan singkat di bagian bawah layar. Di sini, digunakan untuk menampilkan pesan selamat datang atau informasi lain setelah login berhasil.
    
    13) Navigator dan MaterialPageRoute: Digunakan untuk navigasi antar halaman. Di sini, Navigator.pushReplacement digunakan untuk berpindah ke halaman utama setelah login berhasil.

    14) TextEditingController: Controller untuk TextField yang memungkinkan pengambilan dan pengendalian teks yang diinput pengguna.

6. **Implementasi Checklist**
    >> Membuat halaman login pada proyek tugas Flutter.
        
        - Membuat file login.dart pada lib/screens

        - Isi file login.dart
        import 'package:flutter/material.dart';
        import 'package:inventory/screens/menu.dart';
        import 'package:pbp_django_auth/pbp_django_auth.dart';
        import 'package:provider/provider.dart';

        void main() {
            runApp(const LoginApp());
        }

        class LoginApp extends StatelessWidget {
        const LoginApp({super.key});

        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                title: 'Login',
                theme: ThemeData(
                    primarySwatch: Colors.blue,
            ),
            home: const LoginPage(),
            );
            }
        }

        class LoginPage extends StatefulWidget {
            const LoginPage({super.key});

            @override
            _LoginPageState createState() => _LoginPageState();
        }

        class _LoginPageState extends State<LoginPage> {
            final TextEditingController _usernameController = TextEditingController();
            final TextEditingController _passwordController = TextEditingController();

            @override
            Widget build(BuildContext context) {
                final request = context.watch<CookieRequest>();
                return Scaffold(
                    appBar: AppBar(
                        title: const Text('Login'),
                    ),
                    body: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                TextField(
                                    controller: _usernameController,
                                    decoration: const InputDecoration(
                                        labelText: 'Username',
                                    ),
                                ),
                                const SizedBox(height: 12.0),
                                TextField(
                                    controller: _passwordController,
                                    decoration: const InputDecoration(
                                        labelText: 'Password',
                                    ),
                                    obscureText: true,
                                ),
                                const SizedBox(height: 24.0),
                                ElevatedButton(
                                    onPressed: () async {
                                        String username = _usernameController.text;
                                        String password = _passwordController.text;
                                        final response = await request.login("http://127.0.0.1:8000/auth/login/", {
                                        'username': username,
                                        'password': password,
                                        });
                            
                                        if (request.loggedIn) {
                                            String message = response['message'];
                                            String uname = response['username'];
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(builder: (context) => MyHomePage()),
                                            );
                                            ScaffoldMessenger.of(context)
                                                ..hideCurrentSnackBar()
                                                ..showSnackBar(
                                                    SnackBar(content: Text("$message Selamat datang, $uname.")));
                                            } else {
                                            showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                    title: const Text('Login Gagal'),
                                                    content:
                                                        Text(response['message']),
                                                    actions: [
                                                        TextButton(
                                                            child: const Text('OK'),
                                                            onPressed: () {
                                                                Navigator.pop(context);
                                                            },
                                                        ),
                                                    ],
                                                ),
                                            );
                                        }
                                    },
                                    child: const Text('Login'),
                                ),
                            ],
                        ),
                    ),
                );
            }
        }
    
    >> Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.

        - Melakukan setup autentikasi pada proyek django dengan membuat django-app bernama authentication

        - Menambahkan authentication pada INSTALLED_APPS

        - Menjalankan perintah pip install django-cors-headers

        - Menambahkan corsheaders pada INSTALLED_APPS

        - Menambahkan corsheaders.middleware.CorsMiddleware pada main project settings.py

        - Menambahkan beberapa variabel pada main project settings.py
        CORS_ALLOW_ALL_ORIGINS = True
        CORS_ALLOW_CREDENTIALS = True
        CSRF_COOKIE_SECURE = True
        SESSION_COOKIE_SECURE = True
        CSRF_COOKIE_SAMESITE = 'None'
        SESSION_COOKIE_SAMESITE = 'None'

        - Membuat method view untuk login pada authentication/views.py
        from django.shortcuts import render
        from django.contrib.auth import authenticate, login as auth_login
        from django.http import JsonResponse
        from django.views.decorators.csrf import csrf_exempt

        @csrf_exempt
        def login(request):
            username = request.POST['username']
            password = request.POST['password']
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    auth_login(request, user)
                    # Status login sukses.
                    return JsonResponse({
                        "username": user.username,
                        "status": True,
                        "message": "Login sukses!"
                        # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
                    }, status=200)
                else:
                    return JsonResponse({
                        "status": False,
                        "message": "Login gagal, akun dinonaktifkan."
                    }, status=401)

            else:
                return JsonResponse({
                    "status": False,
                    "message": "Login gagal, periksa kembali email atau kata sandi."
                }, status=401)

            - Menambahkan url routing dengan menambahkan urls.py pada folder authentication
            from django.urls import path
            from authentication.views import login

            app_name = 'authentication'

            urlpatterns = [
                path('login/', login, name='login'),
            ]

            - Menambahkan path('auth/', include('authentication.urls')), pada file inventory_management/urls.py

            - Melakukan instalasi beberapa package yang diperlukan untuk proyek flutter
            flutter pub add provider
            flutter pub add pbp_django_auth

            - Melakukan memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider.
            class MyApp extends StatelessWidget {
                const MyApp({Key? key}) : super(key: key);

                @override
                Widget build(BuildContext context) {
                    return Provider(
                        create: (_) {
                            CookieRequest request = CookieRequest();
                            return request;
                        },
                        child: MaterialApp(
                            title: 'Flutter App',
                            theme: ThemeData(
                                colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                                useMaterial3: true,
                            ),
                            home: MyHomePage()),
                        ),
                    );
                }
            }

            - Membuat file baru dengan nama login.dart pada lib/screens

            - Mengisi file login.dart
            import 'package:shopping_list/screens/menu.dart';
            import 'package:flutter/material.dart';
            import 'package:pbp_django_auth/pbp_django_auth.dart';
            import 'package:provider/provider.dart';

            void main() {
                runApp(const LoginApp());
            }

            class LoginApp extends StatelessWidget {
            const LoginApp({super.key});

            @override
            Widget build(BuildContext context) {
                return MaterialApp(
                    title: 'Login',
                    theme: ThemeData(
                        primarySwatch: Colors.blue,
                ),
                home: const LoginPage(),
                );
                }
            }

            class LoginPage extends StatefulWidget {
                const LoginPage({super.key});

                @override
                _LoginPageState createState() => _LoginPageState();
            }

            class _LoginPageState extends State<LoginPage> {
                final TextEditingController _usernameController = TextEditingController();
                final TextEditingController _passwordController = TextEditingController();

                @override
                Widget build(BuildContext context) {
                    final request = context.watch<CookieRequest>();
                    return Scaffold(
                        appBar: AppBar(
                            title: const Text('Login'),
                        ),
                        body: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    TextField(
                                        controller: _usernameController,
                                        decoration: const InputDecoration(
                                            labelText: 'Username',
                                        ),
                                    ),
                                    const SizedBox(height: 12.0),
                                    TextField(
                                        controller: _passwordController,
                                        decoration: const InputDecoration(
                                            labelText: 'Password',
                                        ),
                                        obscureText: true,
                                    ),
                                    const SizedBox(height: 24.0),
                                    ElevatedButton(
                                        onPressed: () async {
                                            String username = _usernameController.text;
                                            String password = _passwordController.text;

                                            // Cek kredensial
                                            // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                            // Untuk menyambungkan Android emulator dengan Django pada localhost,
                                            // gunakan URL http://10.0.2.2/
                                            final response = await request.login("http://<APP_URL_KAMU>/auth/login/", {
                                            'username': username,
                                            'password': password,
                                            });
                                
                                            if (request.loggedIn) {
                                                String message = response['message'];
                                                String uname = response['username'];
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => MyHomePage()),
                                                );
                                                ScaffoldMessenger.of(context)
                                                    ..hideCurrentSnackBar()
                                                    ..showSnackBar(
                                                        SnackBar(content: Text("$message Selamat datang, $uname.")));
                                                } else {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) => AlertDialog(
                                                        title: const Text('Login Gagal'),
                                                        content:
                                                            Text(response['message']),
                                                        actions: [
                                                            TextButton(
                                                                child: const Text('OK'),
                                                                onPressed: () {
                                                                    Navigator.pop(context);
                                                                },
                                                            ),
                                                        ],
                                                    ),
                                                );
                                            }
                                        },
                                        child: const Text('Login'),
                                    ),
                                ],
                            ),
                        ),
                    );
                }
            }

            - Mengubah Widget MaterialApp(...), home: MyHomePage() menjadi home: LoginPage() pada main.dart

    >> Membuat model kustom sesuai dengan proyek aplikasi Django.

        - Menggunakan layanan QuickType untuk pembuatan model kustom

        - Menyalin data JSON dari endpoint Django, kemudian gunakan Quicktype untuk mengonversinya menjadi kelas Dart

        - Setelah mendapatkan kode dari Quicktype, buat file baru di folder lib/models dalam proyek Flutter

    >> Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.

        - Menambahkan dependensi HTTP ke proyek Flutter dengan menjalankan flutter pub add http.

        - Mengizinkan akses internet di aplikasi Flutter dengan mengubah AndroidManifest.xml.

        - Membuat file list_product.dart di folder lib/screens. Di dalamnya, tambahkan fungsi untuk mengambil data dari Django (fetchProduct) dan gunakan FutureBuilder untuk menampilkan data ini dalam bentuk daftar.

    >> Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.

        - Melakukan integrasi halaman daftar produk dengan navigasi ke halaman detail. Ini biasanya melibatkan penggunaan Navigator.push untuk berpindah ke halaman detail saat pengguna memilih item tertentu.

        - Di halaman detail, tampilkan informasi lebih lanjut tentang produk tersebut. Membuat halaman baru untuk ini, yang menampilkan data seperti nama, harga, deskripsi, dan kategori produk secara lebih detail.



