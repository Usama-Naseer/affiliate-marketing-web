import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/screens/all_stores.dart';
import 'package:discountandcodes/screens/blogs_page.dart';
import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

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
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 60,
                width: 200,
              ),
              const SizedBox(
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SearchBarAnimation(
                  textEditingController: TextEditingController(),
                  searchBoxWidth: MediaQuery.of(context).size.width * 0.5,
                  isOriginalAnimation: true,
                  enableKeyboardFocus: true,
                  onExpansionComplete: () {
                    debugPrint('do something just after searchbox is opened.');
                  },
                  onCollapseComplete: () {
                    debugPrint('do something just after searchbox is closed.');
                  },
                  onPressButton: (isSearchBarOpens) {
                    debugPrint(
                        'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
                  },
                  trailingWidget: const Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.black,
                  ),
                  secondaryButtonWidget: const Icon(
                    Icons.close,
                    size: 20,
                    color: Colors.black,
                  ),
                  buttonWidget: const Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              // AnimSearchBar(
              //   width: MediaQuery.of(context).size.width*0.3,
              //   prefixIcon: Icon(Icons.add),
              //   textController: controller,
              //   onSuffixTap: () {
              //     setState(() {
              //       controller.clear();
              //     });
              //   }, onSubmitted: (String ) {  },
              // ),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Coupons',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blueColor,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllStores()));
                    },
                    child: const Text(
                      'Stores',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.blueColor,
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
                          color: AppColors.blueColor,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(width: 20,),
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
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
