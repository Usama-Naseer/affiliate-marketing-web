import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../models/store_model.dart';
import '../screens/store_page.dart';

class StoreTile extends StatelessWidget {
  const StoreTile({required this.store, Key? key}) : super(key: key);
  final Store store;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const StorePage()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.19,
        width: MediaQuery.of(context).size.width * 0.19,
        margin: const EdgeInsets.only(right: 20, bottom: 10, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(2, 2),
                  blurRadius: 4,
                  spreadRadius: 1,
                  color: AppColors.blackColor.withOpacity(0.2))
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
              child: Image.network(store.image,fit:BoxFit.fill ,),
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
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.greyColor),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenColor,
                        ),
                        child: const Icon(
                          Icons.check,
                          size: 8,
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
                    store.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600),
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
