import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';

class CouponsByCat extends StatelessWidget {
  const CouponsByCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWithShade.withOpacity(0.2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Header(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Find Coupons By Category',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset:
                        const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DropdownButton<String>(
                    dropdownColor: AppColors.whiteColor,
                    autofocus: true,
                    elevation: 20,
                    underline: const SizedBox.shrink(),
                    borderRadius: BorderRadius.circular(12),
                    focusColor: Colors.white,
                    items: <String>[
                      'Electronic',
                      'Home & Garden',
                      'Clothing',
                      'Gaming'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    value: 'Electronic',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                ),
                child: GridView.count(
                  crossAxisCount: 4,
                  children: List.generate(
                    8,
                        (index) => Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 19),
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
              )),
          const SizedBox(
            height: 50,
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const AppFooter(),
        ],
      ),
    );
  }
}
