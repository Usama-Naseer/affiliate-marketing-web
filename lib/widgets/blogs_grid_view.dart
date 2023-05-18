import 'package:discountandcodes/core/app_colors.dart';
import 'package:flutter/material.dart';

class BlogsGridView extends StatelessWidget {
  const BlogsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        crossAxisCount: 2,
        children: List.generate(
          4,
          (index) => Container(
            margin: const EdgeInsets.all(20),
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
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/ronaldo.jpeg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const Text(
                    "Why Ronaldo doesn't like Coca-Cola?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: AppColors.blackColor),
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const Text(
                    "No wonder Ronaldo is scared to even look at a bottle of Coke again. A single bottle reportedly has 10 teaspoons of added sugar which clearly won't help you reach the very top of the sport with The World Health organisation recommending consuming no more than six teaspoons of added sugar daily.No wonder Ronaldo is scared to even look at a bottle of Coke again. A single bottle reportedly has 10 teaspoons of aNo wonder Ronaldo is scared to even look at a bottle of Coke again. A single bottle reportedly has 10 teaspoons of a,A single bottle reportedly has 10 teaspoons of aNo wonder Ronaldo is scared to even look at a bottle of Coke again. A single bottle reportedly has 10 teaspoons of aA single bottle reportedly has 10 teaspoons of aNo wonder Ronaldo is scared to even look at a bottle of Coke again. A single bottle reportedly has 10 teaspoons of aA single bottle reportedly has 10 teaspoons of aNo wonder Ronaldo is scared to even look at a bottle of Coke again. A single bottle reportedly has 10 teaspoons of aA single bottle reportedly has 10 teaspoons of aNo wonder Ronaldo is scared to even look at a bottle of Coke again. A single bottle reportedly has 10 teaspoons of a",overflow: TextOverflow.ellipsis,maxLines: 10,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: AppColors.blackColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
