import 'package:discountandcodes/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/store_model.dart';

class StoreTileSmall extends StatelessWidget {
  final Store store;
  const StoreTileSmall({required this.store,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/store',arguments: store.storeName);
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
        padding:
        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.myHexColor.withOpacity(0.1),
                      blurRadius: 10.0,
                      offset: const Offset(2.0, 2.0),
                    ),
                  ]),
              child: Image.network(
                store.image,
                height: 80,
                width: 120,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  store.storeName,
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize:18, fontWeight: FontWeight.w500),),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Coupons & deals',

                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontSize:14, fontWeight: FontWeight.w500, color: Colors.grey),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
