import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/widgets/competitors.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    storeName= ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(100),
        child: Header(),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const SizedBox(
              height: 40,
            ),
           Text(MediaQuery.of(context).size.width.toString()),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                 if(MediaQuery.of(context).size.width>850)
                  StoreDescription(store: getStore(),),
                Container(
                    width: screenWidth>900?screenWidth*0.7:screenWidth>850?screenWidth*0.5:screenWidth>700?screenWidth*0.9:screenWidth*0.7,
                    child: Center(child: CouponGridView(coupons: DummyData.coupons.where((element) => element.storeName==storeName).toList(),))),

              ],
            ),
            const SizedBox(
              height: 20,
            ),
            if(MediaQuery.of(context).size.width>870)
              StoreCompetitors(stores: DummyData.stores.where((element) => element.category== (DummyData.stores.firstWhere((element2) => element2.storeName==storeName).category)).toList()),
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
