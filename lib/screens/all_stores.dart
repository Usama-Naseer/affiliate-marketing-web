import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/header.dart';

class AllStores extends StatelessWidget {
  const AllStores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWithShade.withOpacity(0.2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Header(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Find Coupons by Store',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DropdownButton<String>(
                    dropdownColor: AppColors.whiteColor,
                    autofocus: true,
                    elevation: 20,
                    underline: const SizedBox.shrink(),
                    borderRadius: BorderRadius.circular(12),
                    focusColor: Colors.white,
                    items: <String>[
                      'Electronic',
                      'Home & Garden',
                      'Clothing',
                      'Gaming'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    value: 'Electronic',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.withOpacity(0.2)),
            ),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              childAspectRatio: 4,
              children: List.generate(
                20,
                (index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Meow Wolf',
                            style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'meowolf.com',
                            style: TextStyle(
                                fontSize: 16, color: AppColors.greyColor),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Coupons:',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '9',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.greyColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                           const SizedBox(height: 5,),
                           Text('Offers coupon:Sometimes',style: TextStyle(color: AppColors.blackColor.withOpacity(0.7),fontSize: 14),)
                        ],
                      ),
                      Image.asset(
                        'assets/images/meow.png',
                        height: 60,
                        width: 200,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
