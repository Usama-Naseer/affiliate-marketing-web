import 'package:auto_size_text/auto_size_text.dart';
import 'package:discountandcodes/models/coupon_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../core/app_colors.dart';
import 'code_pop_up.dart';

class CouponTile extends StatelessWidget {
  final Coupon coupon;
  const CouponTile({required this.coupon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCouponCodePopUp(context, coupon);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 4),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.myHexColor.withOpacity(0.1),
                blurRadius: 10.0,
                offset: const Offset(2.0, 2.0),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      coupon.title,
                      minFontSize: 10,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: AppColors.orangeColor.withOpacity(0.20),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'Top Coupon',
                        style: TextStyle(color: AppColors.orangeColor),
                      )),
                    ),
                    const Spacer(),
                    Image.network(
                      coupon.image,
                      height: 50,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  child: ReadMoreText(
                    coupon.description,
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    textAlign: TextAlign.start,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: '..Show less',
                    moreStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const Divider(
              height: 0.7,
              thickness: 0.7,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 30, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.shade200.withOpacity(0.4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300.withOpacity(0.1),
                          blurRadius: 10.0,
                          offset: const Offset(2.0, 2.0),
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        coupon.code,
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.greenColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text(
                          'Copy',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w400),
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 0.7,
              thickness: 0.7,
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2128 ',
                      style: GoogleFonts.abel(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor.withOpacity(0.7)),
                    ),
                    Text(
                      'users',
                      style: GoogleFonts.abel(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor.withOpacity(0.7)),
                    ),
                  ],
                ),
                // Text(
                //   'Last used 29 minutes ago',
                //   style: GoogleFonts.abel(fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.blackColor.withOpacity(0.7)),
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Verified',
                      style: GoogleFonts.abel(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor.withOpacity(0.7)),
                    ),
                    const SizedBox(width: 2),
                    Container(
                      height: 12,
                      width: 12,
                      margin: const EdgeInsets.only(left: 5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.greenColor,
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 10,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
