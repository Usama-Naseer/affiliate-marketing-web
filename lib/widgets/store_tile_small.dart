import 'package:discountandcodes/core/app_colors.dart';
import 'package:flutter/material.dart';

class StoreTileSmall extends StatelessWidget {
  const StoreTileSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.withOpacity(0.5))),
            child: Image.asset(
              'assets/images/meow.png',
              height: 60,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Meow Wolf',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Coupons, promo codes & deals',
                style: TextStyle(
                    color: AppColors.blackColor.withOpacity(0.7),
                    fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
