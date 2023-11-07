import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);
    final List<InventoryItem> items = [
    InventoryItem("Lihat Item", Icons.checklist),
    InventoryItem("Tambah Item", Icons.add_shopping_cart),
    InventoryItem("Logout", Icons.logout),
];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inventory Management',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Smart Inventory', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((InventoryItem item) {
                  // Iterasi untuk setiap item
                  return InventoryCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
    }
  }

class InventoryItem {
    final String name;
    final IconData icon;

    InventoryItem(this.name, this.icon);
  }
class InventoryCard extends StatelessWidget {
  final InventoryItem item;

  const InventoryCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color buttonColor;

    // Assign a different darker color based on the item's name using hexadecimal values
    if (item.name == "Lihat Item") {
      buttonColor = Color(0xFF20AEE8); // Warna untuk button "Lihat Produk"
    } else if (item.name == "Tambah Item") {
      buttonColor = Color(0xFF00C782); // Warna untuk button "Tambah Produk"
    } else if (item.name == "Logout") {
      buttonColor = Color(0xFFFFC000); // Warna untuk button "Logout"
    } else {
      // Default color
      buttonColor = Color(0xFF808080); // Warna default button
    }

    return Material(
      color: buttonColor, // Set warna dari button
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


