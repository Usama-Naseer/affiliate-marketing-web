import 'dart:math';

import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/widgets/code_pop_up.dart';
import 'package:discountandcodes/widgets/deal.dart';
import 'package:flutter/material.dart';

class CouponsListView extends StatelessWidget {
  const CouponsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '    Coupons',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.blackColor),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            height: 310,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => HomeDeal(coupon: DummyData.coupons[index],),itemCount: min(DummyData.coupons.length,5)),
          ),
        ],
      ),
    );
  }
}
