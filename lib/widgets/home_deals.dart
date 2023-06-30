import 'dart:math';
import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/models/coupon_model.dart';
import 'package:discountandcodes/widgets/deal.dart';
import 'package:flutter/material.dart';

import '../core/helper_functions.dart';
import '../models/store_model.dart';

class CouponsListView extends StatelessWidget {
  const CouponsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: DummyData.categories.length,
            itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DummyData.categories[index],
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 310,
                      child: ListView.builder(
                        // padding: EdgeInsets.symmetric(horizontal: screenWidth*0.1),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index2) => HomeDeal(
                                  coupon: categoryCoupons(
                                DummyData.categories[index],
                              )[index2]),
                          itemCount: min(
                              categoryCoupons(
                                DummyData.categories[index],
                              ).length,
                              screenWidth>1400?5:screenWidth>1200?4:screenWidth>850?3:screenWidth>600?2:1),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                )));
  }
}

List<Coupon> categoryCoupons(String cat) {
  List<Store> stores = [];
  List<Coupon> coupons = [];
  for (var element in DummyData.stores) {
    if (element.category == cat) {
      stores.add(element);
    }
  }
  for (var element2 in DummyData.coupons) {
    if (stores.any((element3) => element3.storeName == element2.storeName)) {
      coupons.add(element2);
    }
  }
  return coupons..shuffle();
}
