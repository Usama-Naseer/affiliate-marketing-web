import 'package:discountandcodes/core/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../core/app_colors.dart';
import '../models/store_model.dart';

class StoreTile extends StatelessWidget {
  const StoreTile({required this.store, required this.index, Key? key})
      : super(key: key);
  final Store store;
  final int index;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        context.goNamed(
          'store',
          pathParameters: {
            'storeName': store.storeName,
          },
        );
      },
      child: Container(
        height: 280,
        width: screenWidth > 1650
            ? screenWidth * .186
            : screenWidth > 1300
                ? screenWidth * .183
                : screenWidth > 950
                    ? screenWidth * .245
                    : screenWidth >= 650
                        ? screenWidth * 0.35
                        : 300,
        margin: EdgeInsets.only(
          right: index != 3 ? screenWidth * 0.017 : 0,
          bottom: 10,
          top: 10,
        ),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 170,
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        store.storeName,
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 12,
                        width: 12,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
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
                      if (HelperFunctions.getPlatform(context) == Platform.web)
                        Text(
                          '365 users globally ',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
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
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: AppColors.blackColor.withOpacity(0.7)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
