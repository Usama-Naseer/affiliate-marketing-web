import 'dart:math';
import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/models/coupon_model.dart';
import 'package:discountandcodes/widgets/deal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/helper_functions.dart';
import '../models/store_model.dart';

class CouponsListView extends StatefulWidget {
  const CouponsListView({super.key});

  @override
  State<CouponsListView> createState() => _CouponsListViewState();
}

class _CouponsListViewState extends State<CouponsListView> {
  List<List<Coupon>> sortedCoupons =[];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth>500? MediaQuery.of(context).size.width * 0.1:5),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: DummyData.categories.length,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DummyData.categories[index],
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 310,
                  child: ListView.builder(
                    // padding: EdgeInsets.symmetric(horizontal: screenWidth*0.1),
                    physics: screenWidth>600?NeverScrollableScrollPhysics():null,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index2) => HomeDeal(
                      coupon: sortedCoupons[index][index2], index: index2,),
                    itemCount: min(
                        categoryCoupons(
                          DummyData.categories[index],
                        ).length,
                        screenWidth>1400?5:screenWidth>1200?4:screenWidth>850?3:screenWidth>600?2:5),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            )));
  }

  @override
  void initState() {
    super.initState();
    sortAndShuffleCoupons();
  }
  void sortAndShuffleCoupons(){
    for (var element in DummyData.categories) {
      sortedCoupons.add(categoryCoupons(element));
    }
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
