
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Produktliste',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const S4536(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Produktklasse mit den Attributen name und price
class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class S4536 extends StatelessWidget {
  const S4536({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste von mindestens fünf Produkten generieren
    final List<Product> products = [
      Product(name: "Laptop", price: 999.99),
      Product(name: "Smartphone", price: 699.00),
      Product(name: "Kopfhörer", price: 149.95),
      Product(name: "Tablet", price: 349.50),
      Product(name: "Smartwatch", price: 249.00),
      Product(name: "Kamera", price: 599.00),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Produktliste'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        // shrinkWrap: true wie in der Aufgabenstellung gefordert
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            // Einkaufswagen-Icon auf der linken Seite
            leading: const Icon(
              Icons.shopping_cart,
              color: Colors.blue,
            ),
            // Name des Produkts
            title: Text(
              products[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            // Preis des Produkts
            subtitle: Text(
              '${products[index].price.toStringAsFixed(2)} €',
              style: const TextStyle(color: Colors.green),
            ),
            onTap: () {
              // Aktion beim Tippen auf ein Produktelement
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${products[index].name} ausgewählt'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
