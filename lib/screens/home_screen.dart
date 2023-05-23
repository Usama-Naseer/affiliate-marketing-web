import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/home_coupon_grid_view.dart';
import 'package:discountandcodes/widgets/store_listview.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
          child: Column(
            children:  [
              SizedBox(
                height: 15,
                child: Marquee(
                  text: '10% Zaful Discount Code',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  scrollAxis: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  blankSpace: 20.0,
                  velocity: 100.0,
                  pauseAfterRound: const Duration(seconds: 1),
                  startPadding: 10.0,
                  accelerationDuration: const Duration(seconds: 1),
                  accelerationCurve: Curves.linear,
                  decelerationDuration: const Duration(milliseconds: 500),
                  decelerationCurve: Curves.easeOut,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Header(),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                thickness: 0.5,
              ),
              const StoreListView(),

              const SizedBox(
                height: 25,
              ),
              const HomeCouponGridView(),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const AppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
