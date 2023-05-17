import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height * 0.27,
      width: MediaQuery.of(context).size.width*0.75,
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0.5, 0.5),
              blurRadius: 2,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const SizedBox(height: 20,),
                Container(
                  // width: 160.0,
                    height: 60.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,

                    ),
                  child: const Text.rich(TextSpan(
                    text: 'Terms of Use'
                      '1: Asad Yousaf'


                  ))

                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}