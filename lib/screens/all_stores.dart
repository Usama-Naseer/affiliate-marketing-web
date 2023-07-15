import 'package:discountandcodes/core/dummy.dart';
import 'package:discountandcodes/core/helper_functions.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/app_colors.dart';
import '../models/store_model.dart';
import '../widgets/header.dart';

Color myHexColor = const Color(0xff2b2b2b);

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
    stores = DummyData.stores.where((element) => element.category == cat).toList();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: const PreferredSize(preferredSize: Size.fromHeight(100),
        child: Header(),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find Coupons by Store',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: myHexColor.withOpacity(0.1),
                            blurRadius: 10.0,
                            offset: const Offset(2.0, 2.0),
                          ),
                        ]),
                    child: DropdownButton<String>(
                      dropdownColor: AppColors.whiteColor,
                      autofocus: true,
                      elevation: 20,
                      underline: const SizedBox.shrink(),
                      borderRadius: BorderRadius.circular(12),
                      items: categories.map((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
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
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                crossAxisCount: screenWidth>1300? 3  :(screenWidth>800) ? 2 : 1,
                mainAxisSpacing: 0,
                mainAxisExtent: 150

              ),

              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
              itemCount: stores.length,

              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/store',
                        arguments: stores[index].storeName);
                  },
                  child: Container(
                    height: 100,
                    margin:
                    const EdgeInsets.only(right: 20, top: 20, bottom: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
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
                                  color: myHexColor.withOpacity(0.1),
                                  blurRadius: 10.0,
                                  offset: const Offset(2.0, 2.0),
                                ),
                              ]),
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
                              style: GoogleFonts.lato(
                                textStyle:  const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                            if(HelperFunctions.getPlatformStanding(context)!=PlatformStanding.tabEnd)
                              Text(
                                'Coupons, promo codes',
                                style: GoogleFonts.lato(
                                  textStyle:  const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },

            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
