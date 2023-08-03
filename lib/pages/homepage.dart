import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/BottomCartSheet.dart';
import 'package:flutter_online_shop/pages/CategoriesWidget.dart';
import 'package:flutter_online_shop/pages/ItemsWidget.dart';
import 'package:flutter_online_shop/pages/PopularItemsWidget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A368),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 25, left: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF00A368),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              blurRadius: 2,
                            ),
                          ]),
                      child: Badge(
                        label: const  Text(
                          "3",
                        ),
                        backgroundColor: Colors.red,
                        child: InkWell(
                          onTap: () {
                            showSlidingBottomSheet(
                              context,builder: (context){
                                return  SlidingSheetDialog(
                                 elevation: 8,
                                 cornerRadius: 16,
                                 builder: (context, state){
                                  return const BottomCartSheet();
                                 }
                                );
                              }
                            );
                          },
                          child: const Icon(
                            CupertinoIcons.cart,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "What do you want to Buy?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.search),
                    Container(
                      // margin: const EdgeInsets.only(left: 8),
                      width: 250.0,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search here...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.filter_list),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const  [
                        CategoriesWidget(),
                        PopularItemsWidget(),
                        ItemsWidget(),
                      ],
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
