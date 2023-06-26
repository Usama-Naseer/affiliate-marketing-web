import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/widgets/coupon_grid_view.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/store_description.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/store_model.dart';

class StorePage extends StatefulWidget {
  const StorePage({ this.storeName ='',Key? key}) : super(key: key);
 final String  storeName;

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
 late String storeName ;

  @override
  Widget build(BuildContext context) {
    storeName= ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
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
              '$storeName Coupon Codes June 2023',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:26, fontWeight: FontWeight.w500),),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(MediaQuery.of(context).size.width.toString()),
            CouponGridView(coupons: DummyData.coupons.where((element) => element.storeName==storeName).toList(),),
            const SizedBox(
              height: 20,
            ),
            if(MediaQuery.of(context).size.width>870)
            StoreDescription(store: getStore(),),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
  Store getStore(){
    return DummyData.stores.firstWhere((element) => element.storeName==storeName);

  }
}
