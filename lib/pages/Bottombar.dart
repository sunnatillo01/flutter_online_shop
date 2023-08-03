import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70.0,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "\$120",
              style: TextStyle(
                  color: Color(0xFF00A368),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFF00A368),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: const  [
                    Icon(Icons.add_shopping_cart,
                        color: Colors.white, size: 20),
                     SizedBox(width: 5),
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
