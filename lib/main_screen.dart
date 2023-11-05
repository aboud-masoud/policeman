import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // List<Item> itemsList = [
  //   Item(
  //       name: "Fruit 1",
  //       price: 1.2,
  //       image: "https://exoticfruits.co.uk/cdn/shop/products/passionfruit-exoticfruitscouk-270048.jpg?v=1645488927"),
  //   Item(name: "babaya", price: 0.3, image: "https://www.freshco.com.sg/cdn/shop/products/Papaya.jpg?v=1586842607"),
  //   Item(
  //       name: "banana", price: 2.6, image: "https://static.libertyprim.com/files/familles/banane-large.jpg?1569271725"),
  //   Item(name: "Mango", price: 4.9, image: "https://www.svz.com/wp-content/uploads/2018/05/Mango.jpg"),
  //   Item(name: "apple", price: 3.1, image: "https://static.libertyprim.com/files/familles/pomme-large.jpg?1569271834"),
  //   Item(name: "dragon", price: 6.0, image: "https://www.color-meanings.com/wp-content/uploads/Pitaya.jpeg"),
  // ];

  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd MMMM yyyy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, size: 30),
                  Text(
                    "Today, ${formatter.format(now)}",
                    style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  const Icon(Icons.search, size: 30),
                ],
              ),
              Row(
                children: [
                  Image.network(
                    "https://image.similarpng.com/very-thumbnail/2022/06/Fresh-delicious-pizza-on-transparent-background-PNG.png",
                    width: 150,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
