import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/widgets/store_tile.dart';
import 'package:flutter/material.dart';

class StoreListView extends StatelessWidget {
  const StoreListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 20,horizontal: MediaQuery.of(context).size.width*0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Trending Stores',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.greenColor),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>  StoreTile(store: DummyData.stores[index],),itemCount: DummyData.stores.length,),
          ),
        ],
      ),
    );
  }
}
