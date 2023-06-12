import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/app_colors.dart';
import '../core/helper_functions.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      const Divider(
        height: 1,
        thickness: 0.5,
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                'assets/images/logo.png',
                height: 50,
                width: 200,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Expanded(
                  child: Text(
                    "Discount&Codes finds coupon codes, discount sales and promotions for e-commerce stores listed in our store directory. While promo codes are time-sensitive and may expire, we have human editors verify discount codes at retailer websites to ensure they work at the time of test.To redeem a promo code for a discount, simply copy the code to your clipboard, then paste it into the coupon code entry box during checkout on the retailer's website. Look for a confirmation mes entry box during checkout on the retailer's website. Look for a confirmation",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ]),
            if(HelperFunctions.getPlatform(context)!=Platform.mobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quick Access',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Shop Coupons',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Stores by Category',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            if(HelperFunctions.getPlatform(context)!=Platform.mobile)
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'About Us',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/privacyPolicy');
                  },
                  child: Text(
                    'Privacy policy',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/terms');
                  },
                  child: Text(
                    'Terms Of Use',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            if(HelperFunctions.getPlatform(context)!=Platform.mobile)
              Column(
              children: [
                Text(
                  'Connect',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.instagram,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.facebookMessenger,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
