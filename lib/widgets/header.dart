import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/screens/blogs_page.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 60,
                width: 200,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search stores and deals',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.3))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide(
                              color: AppColors.greyColor.withOpacity(0.3))),
                      suffixIcon: Container(
                        height: 35,
                        width: 35,
                        margin:
                            const EdgeInsets.only(right: 5, bottom: 5, top: 5),
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff00da24)),
                        child: const Center(
                          child: Icon(
                            Icons.search_rounded,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      )),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Coupons',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/allStores');
                    },
                    child: const Text(
                      'Stores',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlogsPage()));
                    },
                    child: const Text(
                      'Blogs',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blackColor,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
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
        ],
      ),
    );
  }
}
