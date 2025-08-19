import 'package:ecommerce_shoes/utils/constant/app_colors.dart';
import 'package:ecommerce_shoes/utils/constant/app_strings.dart';
import 'package:flutter/material.dart';

class Itembottomnavbar extends StatelessWidget {
  const Itembottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.offWhiteBlue,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            decoration: BoxDecoration(
              color: AppColors.darkBlueGrey,
              borderRadius: BorderRadius.circular(10),
              boxShadow:[
                BoxShadow(
                  color:AppColors.darkBlueGrey.withAlpha(300),
                  blurRadius: 5,
                  spreadRadius: 1,

                )
              ]
            ),
            child: Row(
              children: [
                Text(
                  AppStrings.add_Cart,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.shopping_cart, color: AppColors.white,size: 32,),

              ],

            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: BoxDecoration(
                color: AppColors.darkBlueGrey,
                borderRadius: BorderRadius.circular(10),
                boxShadow:[
                  BoxShadow(
                    color:AppColors.darkBlueGrey.withAlpha(300),
                    blurRadius: 5,
                    spreadRadius: 1,

                  )
                ]
            ),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(Icons.shopping_bag, color: AppColors.white,size: 45,),

              ],

            ),
          ),


        ],
      ),
    );
  }
}
