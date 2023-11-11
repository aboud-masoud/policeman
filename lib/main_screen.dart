import 'package:flutter/material.dart';

import 'package:police/widgets/filter.dart';
import 'package:police/widgets/header.dart';
import 'package:police/widgets/main_item_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

//https://redowls.gumroad.com/l/FreeRestaurantPOS

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            const HeaderView(price: "0.0"),
            const FilterView(),
            Expanded(
              child: ListView.builder(itemBuilder: (ctx, index) {
                return const MainItemView();
              }),
            )
          ],
        ),
      ),
    );
  }
}
