import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/home_deals.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWithShade.withOpacity(0.2),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 10,
            ),
           Header(),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              '35% Off ZAGG Coupon (20 Promo Codes) April 2023',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 10,
            ),
            CouponsListView(),
          ],
        ),
      ),
    );
  }
}
