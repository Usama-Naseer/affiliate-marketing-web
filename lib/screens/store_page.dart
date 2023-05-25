import 'dart:math';

import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/widgets/coupon_grid_view.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/store_description.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({ this.storeName ='',Key? key}) : super(key: key);
 final String  storeName;

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {

  @override
  Widget build(BuildContext context) {
    String? storeName = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      backgroundColor: AppColors.greyWithShade.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(
              height: 10,
            ),
            const Header(),
            const SizedBox(
              height: 20,
            ),
            Text(
              '20% Off ${widget.storeName} Coupon (20 Promo Codes) April 2023',
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CouponGridView(coupons: DummyData.coupons.where((element) => element.storeName==storeName).toList(),),
            const StoreDescription(),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
