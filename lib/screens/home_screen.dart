import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/home_deals.dart';
import 'package:discountandcodes/widgets/store_listview.dart';
import 'package:discountandcodes/widgets/storeinfo.dart';
import 'package:discountandcodes/widgets/stores_grid.dart';
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
              StoreListView(),

              SizedBox(
                height: 25,
              ),
              CouponsListView(),

              SizedBox(
                height: 50,
              ),
              StoreInfo(),
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
      ),
    );
  }
}
