import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/code_pop_up.dart';
import 'package:discountandcodes/widgets/coupon_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import '../models/coupon_model.dart';

class CouponGridView extends StatelessWidget {
  const CouponGridView({required this.coupons, Key? key}) : super(key: key);
  final List<Coupon> coupons;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        itemCount: coupons.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context,index)=>CouponTile(coupon: coupons[index]),
      ),
    );
  }
}
