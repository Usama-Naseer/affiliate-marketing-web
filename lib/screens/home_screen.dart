import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/coupon_grid_view.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/home_coupon_grid_view.dart';
import 'package:discountandcodes/widgets/home_deals.dart';
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
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              SizedBox(height: 30,),
              StoreListView(),
              // SizedBox(
              //   height: 15,
              // ),
              CouponsListView(),
              SizedBox(
                height: 50,
              ),
              Divider(
                height: 1,
                thickness: 0.5,
              ),
              AppFooter(),
            ],
          ),
        ),

    );
  }
}
