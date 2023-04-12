import 'package:discountandcodes/core/app_colors.dart';
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
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Discount&Codes',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                        color: AppColors.greenColor,
                        fontStyle: FontStyle.italic)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Search stores and deals',
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            const BorderSide(color: AppColors.greyColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                            const BorderSide(color: AppColors.greyColor)),
                        suffixIcon: Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greenColor),
                          child: const Icon(
                            Icons.search,
                            color: AppColors.whiteColor,
                          ),
                        )),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Promo codes',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Blogs',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
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
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: List.generate(
                  20,
                      (index) => Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
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
                            const Text(
                              'Furniture',
                              style:
                              TextStyle(fontWeight: FontWeight.w600),
                            ),
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
                              padding:
                              const EdgeInsets.only(left: 30, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('FREE-SHIP-25',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
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


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
