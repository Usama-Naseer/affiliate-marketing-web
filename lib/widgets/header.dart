import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/screens/all_stores.dart';
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
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 60,
            width: 200,
          ),
          const SizedBox(width: 30,),
          AnimSearchBar(
            width: MediaQuery.of(context).size.width*0.3,
            textController: controller,
            onSuffixTap: () {
              setState(() {
                controller.clear();
              });
            }, onSubmitted: (String ) {  },
          ),
          Spacer(),
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
      ),
    );
  }
}
