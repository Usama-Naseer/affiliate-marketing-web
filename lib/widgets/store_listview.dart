import 'dart:math';

import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/widgets/store_tile.dart';
import 'package:flutter/material.dart';

class StoreListView extends StatelessWidget {
  const StoreListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 20, horizontal: MediaQuery.of(context).size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Trending Stores',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor.withOpacity(0.8)),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/allStores');
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border:Border.all(color: Colors.black.withOpacity(0.5),width: 1.2)
                  ),
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
          const SizedBox(height: 30,),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => StoreTile(
                store: DummyData.stores[index],
              ),
              itemCount: min(DummyData.stores.length, 4),
            ),
          ),
        ],
      ),
    );
  }
}
