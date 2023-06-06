import 'package:discountandcodes/screens/terms_of_use.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),

      // margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(
          //   width: 100,
          // ),
          // const Icon(
          //   FontAwesomeIcons.instagram,
          //   size: 20,
          // ),
          //
          // const Icon(
          //   FontAwesomeIcons.facebookMessenger,
          //   size: 20,
          // ),
          //
          // const Icon(
          //   FontAwesomeIcons.whatsapp,
          //   size: 20,
          // ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Image.asset(
                'assets/images/logo.png',
                height: 50,
                width: 200,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child:  Expanded(
                  child: Text(
                    "Discount&Codes finds coupon codes, discount sales and promotions for e-commerce stores listed in our store directory. While promo codes are time-sensitive and may expire, we have human editors verify discount codes at retailer websites to ensure they work at the time of test.To redeem a promo code for a discount, simply copy the code to your clipboard, then paste it into the coupon code entry box during checkout on the retailer's website. Look for a confirmation mes entry box during checkout on the retailer's website. Look for a confirmation",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize:14, fontWeight: FontWeight.w500),),
                  ),
                ),
              ),]),
              Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Terms()));
                },
                child:  Text(
                  'Contact us',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize:15, fontWeight: FontWeight.w400),),
                ),
              ),
              const SizedBox(
                          height: 10,
              ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/privacyPolicy');
        },
        child:  Text(
          'Privacy policy',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontSize:15, fontWeight: FontWeight.w400),),
        ),
      ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/terms');
                },
                child:  Text(
                  'Terms Of Use',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize:15, fontWeight: FontWeight.w400),),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                'Scholarship',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                'Influenced marketing',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                'Connect',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Facebook',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Twitter',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Instagram',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'LinkedIn',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                'Shop coupons',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Shop Deals',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Stores by Category',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:15, fontWeight: FontWeight.w400),),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
