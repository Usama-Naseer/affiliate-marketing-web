import 'package:discountandcodes/screens/terms_of_use.dart';
import 'package:flutter/material.dart';
import 'package:discountandcodes/core/app_colors.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height * 0.4,
      padding:
      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children:  [
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Terms()));

                },
                child: const Text(
                  'Terms Of Use',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackColor,
                      fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(
                height: 10,
              ),
              const Text(
                'Privacy policy',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Scholarship',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Influenced marketing',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: const [
              Text(
                'Connect',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Facebook',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Twitter',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Instagram',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'LinkedIn',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ],
          ),
          Column(
            children: const [
              Text(
                'Connect',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Facebook',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Twitter',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Instagram',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'LinkedIn',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: const Expanded(
              child: Text(
                "Discount&Codes finds coupon codes, discount sales and promotions for e-commerce stores listed in our store directory. While promo codes are time-sensitive and may expire, we have human editors verify discount codes at retailer websites to ensure they work at the time of test.To redeem a promo code for a discount, simply copy the code to your clipboard, then paste it into the coupon code entry box during checkout on the retailer's website. Look for a confirmation mes entry box during checkout on the retailer's website. Look for a confirmation",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
