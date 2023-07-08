import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/core/helper_functions.dart';
import 'package:discountandcodes/screens/blogs_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),

      decoration:  BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: kElevationToShadow[0],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 20),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Image.asset(
                  'assets/images/logoBlack.png',
                  width: 180,
                  height: 50,
                ),

                const SizedBox(
                  width:300,
                  child: Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Stores',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.blackColor,),textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),),
                        Text('Coupons',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.blackColor),textHeightBehavior:TextHeightBehavior(applyHeightToFirstAscent: false),),
                        Text('Deals',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.blackColor),textHeightBehavior:TextHeightBehavior(applyHeightToFirstAscent: false)),
                        Text('Blogs',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.blackColor),textHeightBehavior:TextHeightBehavior(applyHeightToFirstAscent: false)),

                      ],

                    ),
                  ),
                ),


                if (HelperFunctions.getPlatform(context) == Platform.web)
                  Container(
                    width: 250,
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.topCenter,
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.blackColor),

                        isCollapsed: true,
                          isDense: true,
                          hintText: 'Search stores and deals',
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 12),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.blackColor.withOpacity(0.3))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                  color: AppColors.primaryColor.withOpacity(0.3))),
                          suffixIcon: Icon(
                            Icons.search_rounded,
                            color: AppColors.blackColor,
                            size: 25,
                          )),
                    ),
                  ),
    // GestureDetector(
    //         onTap: () {
    //           Navigator.pushNamed(context, '/allCoupons');
    //         },
    //         child: Text(
    //           'Coupons    ',
    //           style: GoogleFonts.lato(
    //             textStyle: const TextStyle(
    //                 fontStyle: FontStyle.italic,
    //                 color: AppColors.primaryColor,
    //                 fontSize: 17,
    //                 fontWeight: FontWeight.w500),
    //           ),
    //         ),
    //       ),
                // (HelperFunctions.getPlatform(context) != Platform.mobile &&
                //     HelperFunctions.getPlatformStanding(context) !=
                //         PlatformStanding.tabEnd)
                //     ? Flexible(
                //       child: Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //       GestureDetector(
                //         onTap: () {
                //           Navigator.pushNamed(context, '/allCoupons');
                //         },
                //         child: Text(
                //           'Coupons    ',
                //           style: GoogleFonts.lato(
                //             textStyle: const TextStyle(
                //                 fontStyle: FontStyle.italic,
                //                 color: AppColors.primaryColor,
                //                 fontSize: 17,
                //                 fontWeight: FontWeight.w500),
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 40,
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           Navigator.pushNamed(context, '/allStores');
                //         },
                //         child: Text(
                //           'Stores ',
                //           style: GoogleFonts.lato(
                //             textStyle: const TextStyle(
                //                 fontStyle: FontStyle.italic,
                //                 color: AppColors.primaryColor,
                //                 fontSize: 17,
                //                 fontWeight: FontWeight.w500),
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 40,
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) => const BlogsPage()));
                //         },
                //         child: Text(
                //           'Blogs ',
                //           style: GoogleFonts.lato(
                //             textStyle: const TextStyle(
                //                 fontStyle: FontStyle.italic,
                //                 color: AppColors.primaryColor,
                //                 fontSize: 17,
                //                 fontWeight: FontWeight.w500),
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 40,
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) => const BlogsPage()));
                //         },
                //         child: Text(
                //           ' Contact',
                //           style: GoogleFonts.lato(
                //             textStyle: const TextStyle(
                //                 fontStyle: FontStyle.italic,
                //                 color: Colors.white,
                //                 fontSize: 17,
                //                 fontWeight: FontWeight.w500),
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 20,
                //       ),
                //   ],
                // ),
                //     )
                //     : PopupMenuButton(
                //   icon: const Icon(Icons.more_vert),
                //   onSelected: (value) {
                //     if (value == '1') {
                //       Navigator.pushNamed(context, '/allCoupons');
                //     } else if (value == '2') {
                //       Navigator.pushNamed(context, '/allStores');
                //     } else if (value == "3") {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const BlogsPage()));
                //     }
                //
                //     // your logic
                //   },
                //   itemBuilder: (BuildContext bc) {
                //     return const [
                //       PopupMenuItem(
                //         value: '1',
                //         child: Text("Coupons"),
                //       ),
                //       PopupMenuItem(
                //         value: '2',
                //         child: Text("Stores"),
                //       ),
                //       PopupMenuItem(
                //         value: '3',
                //         child: Text("Blogs"),
                //       )
                //     ];
                //   },
                // ),
              ],
            ),
          ),

          // Divider(),
        ],
      ),
    );
  }
}
