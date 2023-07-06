import 'package:discountandcodes/core/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../core/app_colors.dart';
import '../models/store_model.dart';

class StoreTile extends StatelessWidget {
  const StoreTile({required this.store, Key? key}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/store', arguments: store.storeName);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.35,
        width: screenWidth>1300?screenWidth*.18:screenWidth>950?screenWidth*.25:screenWidth>=650
            ? 270
            :screenWidth>500?300:320,
        margin: const EdgeInsets.only(right: 20, bottom: 10, top: 10,left: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.newblue.withOpacity(0.1),
                blurRadius: 10.0,
                offset: const Offset(2.0, 2.0),
              ),
            ]),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.19,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12)),
              ),
              // child: Image.asset(
              //   'assets/images/meow.png',
              //   height: 200,
              // ),
              child: Image.network(
                store.image,
                fit: BoxFit.fill,
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: AppColors.newblue.withOpacity(0.1),
            ),
            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        store.storeName,
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:15, fontWeight: FontWeight.w700),),
                      ),
                      Container(
                        height: 12,
                        width: 12,
                        margin: const EdgeInsets.only(left: 5),
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          color: HexColor("#5333ed"),
                        ),
                        child: const Icon(
                          Icons.check,
                          size: 10,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                       if(HelperFunctions.getPlatform(context)==Platform.web)
                       Text(
                        '365 users globally ',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize:13, fontWeight: FontWeight.w500),),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    store.shortDescription,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize:15, fontWeight: FontWeight.w500),),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
