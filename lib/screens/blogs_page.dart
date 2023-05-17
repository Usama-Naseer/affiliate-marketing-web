import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/blogs_grid_view.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:flutter/material.dart';

class BlogsPage extends StatefulWidget {
  const BlogsPage({Key? key}) : super(key: key);

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWithShade.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 10,
            ),
            Header(),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
                  '35% Off ZAGG Coupon (20 Promo Codes) April 2023',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
            ),

            BlogsGridView(),
            SizedBox(
              height: 40,
            ),
            AppFooter(),
          ],
        ),
      ),
    );
  }
}
