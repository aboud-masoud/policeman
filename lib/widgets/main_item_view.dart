import 'package:flutter/material.dart';
import 'package:police/widgets/add_to_cart.dart';
import 'package:police/widgets/chart.dart';
import 'package:police/widgets/discount.dart';
import 'package:police/widgets/properties.dart';
import 'package:police/widgets/qty.dart';
import 'package:police/widgets/rating.dart';

class MainItemView extends StatelessWidget {
  const MainItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Image.asset(
                  "swaar/pizza1.png",
                  width: 145,
                ),
                const DiscountView(),
                const QtyView(),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Text(
                  "White Chicken",
                  style: TextStyle(color: Color(0xFF515F65), fontSize: 20, fontWeight: FontWeight.w300),
                ),
                Text(
                  "Spicy Chicken",
                  style: TextStyle(color: Color(0xFF515F65), fontSize: 12),
                ),
                SizedBox(height: 10),
                RatingView(),
                SizedBox(height: 16),
                AddToCartView(),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                ChartView(),
                ProperatiesView(title: "Proteins", value: "16,2"),
                ProperatiesView(title: "Carbohydrate", value: "13,9"),
                ProperatiesView(title: "Fiber", value: "8,6"),
              ],
            ),
            const SizedBox(width: 5)
          ],
        ),
      ),
    );
  }
}
