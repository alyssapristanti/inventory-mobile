import 'package:flutter/material.dart';
import 'package:inventory/widgets/drawer.dart';
import 'package:inventory/widgets/inventory_card.dart';

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
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      endDrawer: const RightDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Smart Inventory',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((InventoryItem item) {
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

