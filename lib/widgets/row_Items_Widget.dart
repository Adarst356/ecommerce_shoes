import 'package:flutter/material.dart';

class RowItemsWidget extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String category;
  final String price;

  const RowItemsWidget({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.category,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 180,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F9FD),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF475269).withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, right: 70),
                height: 110,
                width: 120,
                decoration: BoxDecoration(
                  color: const Color(0xFF475269),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Image.asset(
                imagePath,
                height: 150,
                width: 150,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    color: Color(0xFF475269),
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  category,
                  style: TextStyle(
                    color: const Color(0xFF475269).withOpacity(0.8),
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        color: Colors.redAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 70),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.add_shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
