import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/home_deals.dart';
import 'package:discountandcodes/widgets/store_listview.dart';
import 'package:discountandcodes/screens//categories_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
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
                          hintText: 'Search Stores & Coupons',
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
                    children: [
                      const Text(
                        'Promo codes',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  const CategoriesPage())),


                      child: const Text (
                        'Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blackColor,
                            fontSize: 16),
                      ),  ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const CategoriesPage())),


                        child: const Text (
                          'Stores',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blackColor,
                              fontSize: 16),
                        ),  ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const StoreListView(),
              const SizedBox(
                height: 50,
              ),
              const CouponsListView(),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
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
                      children: const [
                        Text(
                          'About Us',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Terms of service',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Privacy policy',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Scholarship',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
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
              ),
            ],
          ),
        ),
      ),
    );
  }


}
