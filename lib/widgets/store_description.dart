import 'package:discountandcodes/core/app_colors.dart';
import 'package:flutter/material.dart';

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
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
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
                          child: Image.network(
                            widget.store.image,
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
                            Text(
                              widget.store.storeName,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.store.url,
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
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        widget.store.shortDescription,
                         style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.9)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About Our TexasRoadhouse.com Promo Codes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Verified Discount Codes',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Total Coupons:	',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Best Discount Today:	',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Average Shopper Savings:	',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            '1',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '28',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '10% off',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '12% off',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
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
                          "We have 1 Texas Roadhouse coupon codes today, good for discounts at",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.9)),
                    ),
                    TextSpan(
                      text: " texasroadhouse.com",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.9) )
                    ),
                    TextSpan(
                      text:
                          " Shoppers save an average of 12.0% on purchases with coupons at texasroadhouse.com, with today's biggest discount being 20% off your purchase.Our most recent Texas Roadhouse promo code was added on May 10, 2023. On average, we find a new Texas Roadhouse coupon code every 60 days. Over the past year, we've found an average of 5.0 discount codes per month for Texas Roadhouse",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.9)),
                    ),
                    TextSpan(
                      text: " biggest discount being 20% off",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color: Colors.black.withOpacity(.9)),
                    ),
                    TextSpan(
                      text:
                          " your purchase.Our most recent Texas Roadhouse promo code was added on May 10, 2023. On average, we find a new Texas Roadhouse coupon code every 60 days. Over the past year, we've found an average of 5.0 discount codes per month for Texas Roadhouse",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.9)),
                    ),
                  ])),
                ],
              ))
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