import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/store_tile.dart';
import 'package:flutter/material.dart';
import '../core/dummy.dart';
import '../models/store_model.dart';

class StoreListView extends StatelessWidget {
  const StoreListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Stores',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColors.greyColor),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const StoreTile()),
          ),
        ],
      ),
    );
  }
}
