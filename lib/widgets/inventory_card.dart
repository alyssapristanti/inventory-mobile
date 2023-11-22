import 'package:flutter/material.dart';
import 'package:inventory/screens/inventory_form.dart';
import 'package:inventory/screens/list_product.dart';
import 'package:inventory/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

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
    final request = context.watch<CookieRequest>();
    Color buttonColor;

    // Assign a different darker color based on the item's name using hexadecimal values
    if (item.name == "Lihat Item") {
      buttonColor = Color(0xFF20AEE8); // Warna untuk button "Lihat Item"
    } else if (item.name == "Tambah Item") {
      buttonColor = Color(0xFF00C782); // Warna untuk button "Tambah Item"
    } else if (item.name == "Logout") {
      buttonColor = Color(0xFFFFC000); // Warna untuk button "Logout"
    } else {
      // Default color
      buttonColor = Color(0xFF808080); // Warna default button
    }

    return Material(
      color: buttonColor, // Set warna dari button
      child: InkWell(
        onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          if (item.name == "Tambah Item") {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InventoryFormPage()));
          }
          else if (item.name == "Lihat Produk") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProductPage()));
          }
          else if (item.name == "Logout") {
            final response = await request.logout(
                "http://127.0.0.1:8000/auth/logout/");
            String message = response["message"];
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message"),
              ));
            }
          }
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