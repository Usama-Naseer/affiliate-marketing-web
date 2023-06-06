import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/app_colors.dart';
import '../models/store_model.dart';

class StoreTile extends StatelessWidget {
  const StoreTile({required this.store, Key? key}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/store', arguments: store.storeName);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.24,
        width: MediaQuery.of(context).size.width * 0.188,
        margin: const EdgeInsets.only(right: 20, bottom: 10, top: 10,left: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: const Color(0xff2b2b2b).withOpacity(0.1),
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
              color: Colors.grey.withOpacity(0.2),
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
                              fontSize:15, fontWeight: FontWeight.w600),),
                      ),
                      Container(
                        height: 12,
                        width: 12,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenColor,
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
                      const Text(
                        '365 users globally ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.greyColor),
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
                    fontSize:16, fontWeight: FontWeight.w500),),
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
