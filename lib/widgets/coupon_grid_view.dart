import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/code_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/coupon_model.dart';

class CouponGridView extends StatelessWidget {
  const CouponGridView({required this.coupons, Key? key}) : super(key: key);
  final List<Coupon> coupons;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        crossAxisCount: 4,
        children: List.generate(
          coupons.length,
          (index) => GestureDetector(
            onTap: () {
              showCouponCodePopUp(context, coupons[index]);
            },
            child: Container(
              margin: const EdgeInsets.only(
                  top: 20, bottom: 20, right: 20, left: 4),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0.5, 0.5),
                      blurRadius: 2,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            coupons[index].title,
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize:18, fontWeight: FontWeight.w600),),
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
                            coupons[index].image,
                            height: 50,
                            width: 60,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '${coupons[index].storeName} coupon code ',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize:15, fontWeight: FontWeight.w600),),
                        ),
                        TextSpan(
                          text: coupons[index].description,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize:13, fontWeight: FontWeight.w500),),
                        )
                      ]))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 0.7,
                    thickness: 0.7,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        color: Colors.grey.shade300.withOpacity(0.4),
                        padding: const EdgeInsets.only(left: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(coupons[index].code,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    fontSize:16, fontWeight: FontWeight.w500),),
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
                    height: 20,
                  ),
                  const Divider(
                    height: 0.7,
                    thickness: 0.7,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
