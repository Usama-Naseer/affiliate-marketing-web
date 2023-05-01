import 'package:discountandcodes/widgets/store_tile.dart';
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
        children:  [
          const SizedBox(
            height: 10,
          ),
          const Header(),
          const SizedBox(
            height: 20,
          ),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
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
                       bottomRight: Radius.circular(10)
                   ),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                       spreadRadius: 2,
                       blurRadius: 2,
                       offset: const Offset(0, 3), // changes position of shadow
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
                   items: <String>['Electronic', 'Home & Garden', 'Clothing', 'Gaming'].map((String value) {
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
          Expanded(child: GridView.count(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
            crossAxisCount: 4,children: List.generate(20, (index) => const StoreTile()),)),
        ],
      ),
    );
  }
}
