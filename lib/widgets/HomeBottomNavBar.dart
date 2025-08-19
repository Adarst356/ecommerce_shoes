import 'package:ecommerce_shoes/utils/constant/app_colors.dart';
import 'package:ecommerce_shoes/widgets/BottomCartSheet.dart';
import 'package:flutter/material.dart';
//import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class Homebottomnavbar extends StatelessWidget {
  const Homebottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.darkBlueGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
              Icons.category_outlined,
              color: AppColors.white,
              size: 32
          ),
          InkWell(
            onTap: (){
           showSlidingBottomSheet(
               context,
               builder: (context){
                return SlidingSheetDialog(
                  elevation: 8,
                  cornerRadius: 16,
                  builder: (context, state){
                    return Bottomcartsheet();
                  }
                );
               }
           );
            },
            child: Icon(
                Icons.shopping_cart,
                color: AppColors.white,
                size: 32
            ),
          ),
          Icon(
              Icons.favorite_border,
              color: AppColors.white,
              size: 32
          ),
          Icon(
              Icons.person,
              color: AppColors.white,
              size: 32
          ),
        ],
      ),
    );
  }
}
