import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: MediaQuery.of(context).size.height * 0.05 ),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            if(HelperFunctions.getPlatform(context)!=Platform.mobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
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
                        fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Stores by Category',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            if(MediaQuery.of(context).size.width>700)
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
                          fontSize: 14, fontWeight: FontWeight.w300),
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
                          fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
            if(HelperFunctions.getPlatform(context)!=Platform.mobile && HelperFunctions.getPlatformStanding(context) != PlatformStanding.tabEnd)
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
            if(HelperFunctions.getPlatform(context)==Platform.mobile)
               Expanded(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Connect',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
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
                  const SizedBox(height: 40,),
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
                                fontSize: 14, fontWeight: FontWeight.w300),
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
                                fontSize: 14, fontWeight: FontWeight.w300),

                          ),
                        ),
                      ),
                    ],
                  ),



              ],
            ),
               ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: Expanded(
                  child: Text(
                    "DiscountAndCodes.com is a leading online platform dedicated to helping shoppers save money through a vast collection of coupons, promo codes, and discounts.\n \nWith a user-friendly interface, it offers a seamless experience for finding and redeeming deals across a wide range of categories, including fashion, electronics, travel, and more."
                        "DiscountAndCodes.com is a go-to destination for savvy consumers looking to maximize their savings while shopping online or in-store."
                        "\n \nSave big with promo codes! Just copy the code, paste it during checkout, and voila! Your discount is applied. "
                        "Find all supported stores with coupon codes "
                        "here. Happy shopping and saving!",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ]),
          ],

        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            if(HelperFunctions.getPlatform(context)!=Platform.mobile)
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisSize: MainAxisSize.max,
                  children:  [


  Text("Whenever you shop with these partners, we might earn affiliate commissions. It's our way of bringing you more fantastic deals and offers. "
      "Your support means the world to us!", style: GoogleFonts.lato(
    textStyle: const TextStyle(
    fontSize: 15, fontWeight: FontWeight.w300),
    ),
    ),
                  ]),
          ],

        ),
      ),
    ]);
  }
}
