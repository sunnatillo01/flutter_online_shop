import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Category",
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
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 50.0,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6,
                    )
                  ]
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        "images/$i.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                   const  Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "Category",
                        style: TextStyle(
                          // color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
