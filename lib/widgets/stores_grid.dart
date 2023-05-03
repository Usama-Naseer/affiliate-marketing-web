import 'package:discountandcodes/core/app_colors.dart';
import 'package:flutter/material.dart';

class StoreGridView extends StatelessWidget {
  const StoreGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
        crossAxisCount: 4,
        children: List.generate(
          4,
              (index) => Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(
                vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(0.5, 0.5),
                    blurRadius: 2,
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/meow.png',
                          height: 50,
                          width: 60,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
