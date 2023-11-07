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