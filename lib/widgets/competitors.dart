import 'dart:math';

import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/store_tile_small.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/store_model.dart';

class StoreCompetitors extends StatelessWidget {
  final List<Store> stores;
  const StoreCompetitors({required this.stores, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2)),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.myHexColor.withOpacity(0.1),
                  blurRadius: 10.0,
                  offset: const Offset(2.0, 2.0),
                ),
              ]),
          child: Column(
            children: [
              Text('Top Competitors',style: GoogleFonts.lato(fontSize: 26,fontWeight: FontWeight.bold,color:AppColors.blackColor),),
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                    mainAxisSpacing: 0,
                    mainAxisExtent: 150
                  ),

                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: min(9,stores.length,),
                  itemBuilder: (context,index)=>  StoreTileSmall(store: stores[index],)
              )
            ],
          )
      ),
    );
  }
}
