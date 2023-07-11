import 'package:discountandcodes/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/store_model.dart';

class StoreDescription extends StatefulWidget {
  const StoreDescription({required this.store, Key? key}) : super(key: key);
  final Store store;

  @override
  State<StoreDescription> createState() => _StoreDescriptionState();
}

class _StoreDescriptionState extends State<StoreDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.2,
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.075),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.2)),
            color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.myHexColor.withOpacity(0.1),
                  blurRadius: 10.0,
                  offset: const Offset(2.0, 2.0),
                ),
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),

                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.withOpacity(0.2)),
                            color: AppColors.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.myHexColor.withOpacity(0.1),
                                blurRadius: 10.0,
                                offset: const Offset(2.0, 2.0),
                              ),
                            ]
                        ),
                        child: Image.network(
                          widget.store.image,
                          height: 50,
                          width: 120,

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
                          Text(
                            widget.store.storeName,
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize:18, fontWeight: FontWeight.w600),),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.store.url,
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize:16, fontWeight: FontWeight.w500, color: Colors.grey),),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      widget.store.shortDescription,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize:15, fontWeight: FontWeight.w500),),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(
                'About Our TexasRoadhouse.com Promo Codes',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      fontSize:18, fontWeight: FontWeight.w600),),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        'Verified Discount Codes',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:14, fontWeight: FontWeight.w500),),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Total Coupons:	',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:14, fontWeight: FontWeight.w500),),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Best Discount Today:	',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:14, fontWeight: FontWeight.w500),),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Average Shopper Savings:	',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:14, fontWeight: FontWeight.w500),),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '1',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:14, fontWeight: FontWeight.w600),),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '28',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:14, fontWeight: FontWeight.w600),),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '10% off',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:14, fontWeight: FontWeight.w600),),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '12% off',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:14, fontWeight: FontWeight.w400),),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text:  TextSpan(children: [
                TextSpan(
                  text:
                      "We have 1 Texas Roadhouse coupon codes today, good for discounts at texasroadhouse.com. Shoppers save an average of 12.0% on purchases with coupons at texasroadhouse.com, with today's biggest discount being 20% off your purchase.Our most recent Texas Roadhouse promo code was added on May 10, 2023. On average, we find a new Texas Roadhouse coupon code every 60 days. "
                  "Over the past year, we've found an average of 5.0 discount codes per month for Texas Roadhouse biggest discount being 20% off your purchase. "
                          "Our most recent Texas Roadhouse promo code was added on May 10, 2023. On average, we find a new Texas Roadhouse coupon code every 60 days. Over the past year, we've found an average of 5.0 discount codes per month for Texas Roadhouse",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize:13, fontWeight: FontWeight.w400),),
                ),
              ])),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
