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
