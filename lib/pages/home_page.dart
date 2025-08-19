import 'package:ecommerce_shoes/widgets/HomeBottomNavBar.dart';
import 'package:flutter/material.dart';

import '../widgets/all_items_widgets.dart' show AllItemsWidgets;
import '../widgets/row_Items_Widget.dart' show RowItemsWidget;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              //Custom App bar
              children: [
                Padding(padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]
                        ),
                        child: Icon(
                          Icons.sort,
                          size: 30,
                          color: Color(0xFF475269),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F9FD),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                              )
                            ]
                        ),
                        child: Badge(
                          backgroundColor: Colors.redAccent,
                          padding: const EdgeInsets.all(7),
                          label: const Text(
                            "5",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                          child: const Icon(Icons.notifications, size: 30),
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F9FD),
                    borderRadius:BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                       color: Color(0xFF475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]
                  ),
                  child: Row(
                    children: [
                      Container(
                       //margin: EdgeInsets.only(left: 5),
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search"
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.search,size: 27,color: Color(0xFF475269),)
                    ],
                  ),
                ),
                SizedBox(height: 30,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RowItemsWidget(
                        imagePath: "assets/images/1.png",
                        productName: "Nike Shoes",
                        category: "Men's Shoes",
                        price: "\$50",
                      ),
                      RowItemsWidget(
                        imagePath: "assets/images/2.png",
                        productName: "Adidas Runner",
                        category: "Men's Shoes",
                        price: "\$65",
                      ),
                      RowItemsWidget(
                        imagePath: "assets/images/3.png",
                        productName: "Puma Sport",
                        category: "Women's Shoes",
                        price: "\$70",
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                AllItemsWidgets(),
              ],
            ),
          ),
      ),
      bottomNavigationBar: Homebottomnavbar(),
    );
  }
}
