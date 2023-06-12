import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/widgets/coupon_grid_view.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/app_colors.dart';
import '../models/coupon_model.dart';
import '../models/store_model.dart';
import '../widgets/header.dart';

Color myHexColor = const Color(0xff2b2b2b);

class CouponsByCategory extends StatefulWidget {
  const CouponsByCategory({Key? key}) : super(key: key);

  @override
  State<CouponsByCategory> createState() => _CouponsByCategoryState();
}

class _CouponsByCategoryState extends State<CouponsByCategory> {
  List<String> categories = [
    'Electronic',
    'Home & Garden',
    'Clothing & Fashion',
    'Gaming',
    "Travel"
  ];
  String cat = 'Electronic';
  List<Store> stores = DummyData.stores;
  @override
  Widget build(BuildContext context) {
    stores =
        DummyData.stores.where((element) => element.category == cat).toList();
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Header(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find Coupons by Store',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: myHexColor.withOpacity(0.1),
                            blurRadius: 10.0,
                            offset: const Offset(2.0, 2.0),
                          ),
                        ]),
                    child: DropdownButton<String>(
                      dropdownColor: AppColors.whiteColor,
                      autofocus: true,
                      elevation: 20,
                      underline: const SizedBox.shrink(),
                      borderRadius: BorderRadius.circular(12),
                      items: categories.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (val) {
                        cat = val ?? '';
                        stores = DummyData.stores
                            .where((element) => element.category == cat)
                            .toList();
                        setState(() {});
                      },
                      value: cat,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CouponGridView(coupons: categoryCoupons(cat)),
            const AppFooter(),
          ],
        ),
      ),
    );
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
}
