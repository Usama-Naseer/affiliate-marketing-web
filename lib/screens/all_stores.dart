import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../models/store_model.dart';
import '../widgets/header.dart';

class AllStores extends StatefulWidget {
  const AllStores({Key? key}) : super(key: key);

  @override
  State<AllStores> createState() => _AllStoresState();
}

class _AllStoresState extends State<AllStores> {
  List<String> categories = [
    'Electronic',
    'Home & Garden',
    'Clothing & Fashion',
    'Gaming',
    "Travel"
  ];
  String cat = 'Electronic';
  List<Store> stores = DummyData.stores;
  @override
  Widget build(BuildContext context) {
    stores =
        DummyData.stores.where((element) => element.category == cat).toList();
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
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
                      color: AppColors.whiteColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButton<String>(
                      dropdownColor: AppColors.whiteColor,
                      autofocus: true,
                      elevation: 20,
                      underline: const SizedBox.shrink(),
                      borderRadius: BorderRadius.circular(12),
                      items: categories.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,

                          child: Text(value)
                        );
                      }).toList(),
                      onChanged: (val) {
                        cat = val ?? '';
                        stores = DummyData.stores
                            .where((element) => element.category == cat)
                            .toList();
                        setState(() {});
                      },
                      value: cat,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 0,
              childAspectRatio: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              children: List.generate(
                stores.length,
                (index) => GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/store',arguments: stores[index].storeName);
                  },
                  child: Container(
                    height: 100,
                    margin: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            // border: Border.all(color: AppColors.greyColor.withOpacity(0.2)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: const Offset(1, 1),
                                  blurRadius: 2,
                                  spreadRadius: 1)
                            ],
                            color: AppColors.whiteColor,
                          ),
                          child: Image.network(
                            stores[index].image,
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
                              stores[index].storeName,
                              style: const TextStyle(
                                  color: AppColors.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Coupons, promo codes & deals',
                              style: TextStyle(
                                  color: AppColors.blackColor.withOpacity(0.7),
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
