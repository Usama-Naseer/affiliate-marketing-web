import 'package:discountandcodes/models/coupon_model.dart';
import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import 'code_pop_up.dart';
class HomeDeal extends StatelessWidget {
  const HomeDeal({required this.coupon, Key? key}) : super(key: key);
  final Coupon coupon;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.14,
        margin: const EdgeInsets.only(right: 30, left: 0, bottom: 10, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.myHexColor.withOpacity(0.1),
                blurRadius: 10.0,
                offset: const Offset(2.0, 2.0),
              ),
            ]
        ),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              padding: const EdgeInsets.all(10),
              child: Image.network(
                coupon.image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coupon.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: AppColors.blackColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    coupon.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: AppColors.blackColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/store',arguments: coupon.storeName);
                    },
                    child: Text(
                      'More ${coupon.storeName} coupons',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                          decoration: TextDecoration.underline,decorationColor: AppColors.blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Container(
                  //       height: 10,
                  //       width: 10,
                  //       decoration: const BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         color: Colors.green,
                  //       ),
                  //       child: const Icon(
                  //         Icons.check,
                  //         size: 8,
                  //         color: AppColors.whiteColor,
                  //       ),
                  //     ),
                  //     const SizedBox(
                  //       width: 5,
                  //     ),
                  //
                  //     const SizedBox(height: 20,),
                  //     const Text(
                  //       'Verified',
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.w400,
                  //           fontSize: 14,
                  //           color: AppColors.greenColor),
                  //     ),
                  //   ],
                  // ),
                  GestureDetector(
                    onTap: () {
                      showCouponCodePopUp(context,coupon);
                    },
                    child: Container(
                      height: 30,
                      width: 150,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      margin: const EdgeInsets.only(top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                          child: Text(
                        'Shop with code',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColors.whiteColor),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
