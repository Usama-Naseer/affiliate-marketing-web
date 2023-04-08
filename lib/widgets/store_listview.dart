import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/screens/store_page.dart';
import 'package:flutter/material.dart';

class StoreListView extends StatelessWidget {
  const StoreListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Stores',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.greyColor),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.width * 0.18,
                      margin:
                          const EdgeInsets.only(right: 20, bottom: 10, top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(2, 2),
                                blurRadius: 2,
                                color: AppColors.blackColor.withOpacity(0.2))
                          ]),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const StorePage()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.19,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      topLeft: Radius.circular(12)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/ronaldo.jpeg'),
                                      fit: BoxFit.fill)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Meow Wolf ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: AppColors.greyColor),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 10,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.greenColor,
                                        ),
                                        child: const Icon(
                                          Icons.check,
                                          size: 8,
                                          color:  AppColors.whiteColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        '365 users globally ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: AppColors.greyColor),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Free one month douling  over order of \$100. Grab your order now',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
