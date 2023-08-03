import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/Bottombar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                height: 350.0,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/2.png"),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xFF00A368),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Color(0xFF00A368),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Fruit Title",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(CupertinoIcons.minus),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  "01",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Icon(CupertinoIcons.plus),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.star, color: Colors.amber, size: 30),
                        Text(
                          "4.8 (280)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Descreption:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "This is the descreption of the product,here yuo can white more about the product.This is the descreption of the product,here yuo can write more about the product. ",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "Delivery Time:",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(CupertinoIcons.clock, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          "20 Minutes",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
