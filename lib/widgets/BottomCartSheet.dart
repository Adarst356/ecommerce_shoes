import 'package:ecommerce_shoes/utils/constant/app_colors.dart';
import 'package:flutter/material.dart';

class Bottomcartsheet extends StatelessWidget {
  const Bottomcartsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.only(top: 20),
      color: AppColors.lightPowderBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Container(
           height: 500,
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                  margin: EdgeInsets.symmetric(),
                 )
               ],
             ),
           ),
         )
        ],
      ),
    );
  }
}
