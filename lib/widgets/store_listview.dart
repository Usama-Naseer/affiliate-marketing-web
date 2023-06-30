import 'dart:math';

import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/core/helper_functions.dart';
import 'package:discountandcodes/widgets/store_tile.dart';
import 'package:flutter/material.dart';

class StoreListView extends StatelessWidget {
  const StoreListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: screenWidth * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Trending Stores',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/allStores');
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 0.7)),
                  child: const Text(
                    'Explore all',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          screenWidth>500?
          SizedBox(
            height:  300,
            child: ListView.builder(
              shrinkWrap: true,
              // padding: screenWidth <= 500
              //     ? EdgeInsets.symmetric(horizontal: screenWidth * 0.1)
              //     : EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => StoreTile(
                store: DummyData.stores[index],
              ),
              itemCount: min(
                  DummyData.stores.length,
                  screenWidth > 1300
                      ? 4
                      : screenWidth > 950
                          ? 3
                          : screenWidth >= 650
                              ? 2
                              : 1),
            ),
          ): Container(
            // height: 1800,
            child: ListView(
              shrinkWrap: true,
               padding: EdgeInsets.only(right: screenWidth*0.05),
              children: List.generate( min(
                  DummyData.stores.length,5), (index) => StoreTile(
                store: DummyData.stores[index],
              ),)),
          ),
        ],
      ),
    );
  }
}
