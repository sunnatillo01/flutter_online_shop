import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Top",
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
        GridView.count(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          shrinkWrap: true,
          children: [
            for (int i = 2; i < 8; i++)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                      )
                    ]),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "itemPage");
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Image.asset("images/$i.png",
                            height: 110.0, width: 110.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Item title",
                          style: TextStyle(
                            color: Color(0xFF00A368),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Fresh Fruit 2KG",
                          style: TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                       const  Text(
                          "\$20",
                          style: TextStyle(
                            color: Color(0xFF00A368),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration:  BoxDecoration(
                              color: const Color(0xFF00A368),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.add_shopping_cart,color: Colors.white,),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              )
          ],
        )
      ],
    );
  }
}
