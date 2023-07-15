import 'package:discountandcodes/core/app_colors.dart';
import 'package:flutter/material.dart';

class BlogsGridView extends StatelessWidget {
  const BlogsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.count(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        crossAxisCount: 3,
        childAspectRatio: 0.9,
        children: List.generate(
          3,
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
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Category",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.pinkColor.withOpacity(0.5)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "What you wanna know about hubspot?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: AppColors.blackColor.withOpacity(0.9)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: AppColors.greyColor.withOpacity(0.9)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Read full story..',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blueColor.withOpacity(0.8),
                            decorationColor: Colors.blue.withOpacity(0.5),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'By asad yousaf',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: AppColors.greyColor.withOpacity(0.9)),
                            ),
                            Container(
                              height: 10,
                              color: AppColors.greyColor,
                              width: 0.9,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                            ),
                            Text(
                              '22 Jan 2024',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: AppColors.greyColor.withOpacity(0.9)),
                            ),
                            Container(
                              height: 10,
                              color: AppColors.greyColor,
                              width: 0.9,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                            ),
                            Text(
                              '5 minutes read',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: AppColors.greyColor.withOpacity(0.9)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
