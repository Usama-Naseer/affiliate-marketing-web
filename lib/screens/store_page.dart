import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/coupon_grid_view.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWithShade.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Header(),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              '35% Off ZAGG Coupon (20 Promo Codes) April 2023',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.2)),
                color: AppColors.whiteColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5))),
                              child: Image.asset(
                                'assets/images/meow.png',
                                height: 60,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Texas Roadhouse',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'texasroadhouse.com',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.withOpacity(0.5)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: List.generate(
                                      5,
                                          (index) => const Icon(
                                        Icons.star,
                                        color: AppColors.yellowColor,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 10,),
                        const Text("Texas Roadhouse is a major casual dining store that markets products and services at texasroadhouse.com. Texas Roadhouse competes with other top casual dining stores such as Buffalo Wild Wings, Panera Bread and Casey's. Texas Roadhouse sells mid-range purchase size items on its own website and partner sites in the highly competitive online casual dining industry.\n\nWhen it comes to offering discount codes, Texas Roadhouse very rarely issues promotional discount codes. Texas Roadhouse is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300),)
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text('About Our TexasRoadhouse.com Promo Codes',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Verified Discount Codes',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                              SizedBox(height: 5,),
                              Text('Total Coupons:	',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                              SizedBox(height: 5,),
                              Text('Best Discount Today:	',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                              SizedBox(height: 5,),
                              Text('Average Shopper Savings:	',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),


                            ],
                          ),
                          const SizedBox(width: 100,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text('1',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                              SizedBox(height: 5,),
                              Text('28',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                              SizedBox(height: 5,),
                              Text('10% off',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                              SizedBox(height: 5,),
                              Text('12% off',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),


                            ],
                          )



                        ],
                      ),
                      const SizedBox(height:20,),
                      RichText(text: const TextSpan(
                          children: [
                            TextSpan(text:"We have 1 Texas Roadhouse coupon codes today, good for discounts at",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                            TextSpan(text:" texasroadhouse.com",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                            TextSpan(text:" Shoppers save an average of 12.0% on purchases with coupons at texasroadhouse.com, with today's biggest discount being 20% off your purchase.Our most recent Texas Roadhouse promo code was added on May 10, 2023. On average, we find a new Texas Roadhouse coupon code every 60 days. Over the past year, we've found an average of 5.0 discount codes per month for Texas Roadhouse",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                            TextSpan(text:" biggest discount being 20% off",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                            TextSpan(text:" your purchase.Our most recent Texas Roadhouse promo code was added on May 10, 2023. On average, we find a new Texas Roadhouse coupon code every 60 days. Over the past year, we've found an average of 5.0 discount codes per month for Texas Roadhouse",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),

                          ]
                      )),
                    ],
                  ))
                ],
              ),
            ),
            const CouponGridView(),
            const SizedBox(
              height: 40,
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
