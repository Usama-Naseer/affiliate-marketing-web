import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/home_coupon_grid_view.dart';
import 'package:discountandcodes/widgets/store_listview.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
              SizedBox(
                height: 10,
              ),
              Header(),
              StoreListView(),

              SizedBox(
                height: 25,
              ),
              HomeCouponGridView(),
              SizedBox(
                height: 50,
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              AppFooter(),
            ],
          ),
        ),

    );
  }
}
