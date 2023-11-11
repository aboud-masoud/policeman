import 'package:flutter/material.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "swaar/star.png",
          height: 13,
        ),
        const SizedBox(width: 5),
        const Text(
          "4.5",
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
