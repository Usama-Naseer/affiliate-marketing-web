import 'package:discountandcodes/screens/terms_of_use.dart';
import 'package:flutter/material.dart';
import 'package:discountandcodes/core/app_colors.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 50),
      // margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                child: const Expanded(
                  child: Text(
                    "Discount&Codes finds coupon codes, discount sales and promotions for e-commerce stores listed in our store directory. While promo codes are time-sensitive and may expire, we have human editors verify discount codes at retailer websites to ensure they work at the time of test.To redeem a promo code for a discount, simply copy the code to your clipboard, then paste it into the coupon code entry box during checkout on the retailer's website. Look for a confirmation mes entry box during checkout on the retailer's website. Look for a confirmation",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 15,
                        color: Colors.black),
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
                child: const Text(
                  'Terms Of Use',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: AppColors.blackColor,
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Contact us',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Scholarship',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Influenced marketing',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Connect',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Facebook',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Twitter',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Instagram',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'LinkedIn',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Shop coupons',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Shop Deals',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Stores by Category',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
