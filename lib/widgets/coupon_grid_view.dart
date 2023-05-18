import 'package:discountandcodes/core/app_colors.dart';
import 'package:flutter/material.dart';

class CouponGridView extends StatelessWidget {
  const CouponGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.9,
      child: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        crossAxisCount: 4,
        children: List.generate(
          8,
          (index) => Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(0.5, 0.5),
                    blurRadius: 2,
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          '20% off',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: AppColors.orangeColor.withOpacity(0.20),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                              child: Text(
                            'Top Coupon',
                            style: TextStyle(color: AppColors.orangeColor),
                          )),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/images/meow.png',
                          height: 50,
                          width: 60,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Southwest airlien coupon code ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: 'Earn upto 24000 points on southwest arline')
                    ]))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 0.7,
                  thickness: 0.7,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      color: Colors.grey.shade300.withOpacity(0.4),
                      padding: const EdgeInsets.only(left: 30, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('FREE-SHIP-25',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.greenColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                                child: Text(
                              'Copy',
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w400),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 0.7,
                  thickness: 0.7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
