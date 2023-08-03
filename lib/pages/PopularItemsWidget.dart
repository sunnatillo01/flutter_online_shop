import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 5,
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Popular",
                style: TextStyle(
                  color: Color(0xFF00A368),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
                for(int i=2;i<8;i++)
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height: 100.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                   boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8,
                    )
                  ]
                ),
                child: Image.asset("images/$i.png"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
