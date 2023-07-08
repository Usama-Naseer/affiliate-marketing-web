import 'package:discountandcodes/models/coupon_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../core/app_colors.dart';
import 'code_pop_up.dart';

class HomeDeal extends StatelessWidget {
  const HomeDeal({required this.coupon, required this.index, Key? key})
      : super(key: key);
  final Coupon coupon;
  final int index;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      type: MaterialType.transparency,
      child: Container(
        //  width: 230,
        margin: EdgeInsets.only(
            right: index != 4
                ? screenWidth > 900
                    ? 30
                    : 15
                : 0,
            left: 4,
            bottom: 10,
            top: 10),
        width: screenWidth > 1400
            ? screenWidth * 0.142
            : screenWidth > 1200
                ? screenWidth * 0.17
                : screenWidth > 1000
                    ? screenWidth * 0.21
                    : screenWidth > 900
                        ? 220
                        : screenWidth > 850
                            ? 200
                            : 230,
        // margin: const EdgeInsets.only(right: 20, left: 10, bottom: 10, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.newblue.withOpacity(0.1),
                blurRadius: 10.0,
                offset: const Offset(2.0, 2.0),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(0),
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(0),
                    ),
                    color: HexColor("#5333ed"),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Verified',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: 100,
              padding: const EdgeInsets.all(10),
              //  width: MediaQuery.of(context).size.width,
              // padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),

              child: Image.network(
                coupon.image,
                fit: BoxFit.contain,
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
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    coupon.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/store',
                          arguments: coupon.storeName);
                    },
                    child: Text(
                      'More ${coupon.storeName} coupons',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Divider(
              color: AppColors.newblue.withOpacity(0.1),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 40,
              margin:
                  const EdgeInsets.only(right: 0, left: 0, bottom: 10, top: 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Get Code',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
