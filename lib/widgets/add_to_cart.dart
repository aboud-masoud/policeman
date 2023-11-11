import 'package:flutter/material.dart';

class AddToCartView extends StatelessWidget {
  const AddToCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
              color: Color(0xFFE9E9E9),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Center(
              child: Icon(Icons.remove, size: 25),
            ),
          ),
          onTap: () {
            print("-");
          },
        ),
        const SizedBox(width: 5),
        Container(
          height: 40,
          decoration: const BoxDecoration(
            color: Color(0xFFF2FBFF),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "\$ 18.5",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {
                    print("+");
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
