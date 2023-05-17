import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/screens/all_stores.dart';
import 'package:discountandcodes/screens/blogs_page.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 60,
          width: 200,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
                isDense: true,
                hintText: 'Search stores and deals',
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColors.greyColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: AppColors.greyColor)),
                suffixIcon: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.greenColor),
                  child: const Icon(
                    Icons.search,
                    color: AppColors.whiteColor,
                  ),
                )),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AllStores()));

              },
              child: const Text(
                'Stores',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const BlogsPage()));

              },
              child: const Text(
                'Blog',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                    fontSize: 16),
              ),
            ),
          ],
        )
      ],
    );
  }
}
