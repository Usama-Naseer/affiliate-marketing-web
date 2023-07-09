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
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.095),

      decoration:   BoxDecoration(
        color: AppColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.myHexColor.withOpacity(0.2),
              blurRadius: 5.0,
              offset: const Offset(2.0, 1.0),
            ),
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset(
                'assets/images/logoBlack.png',
                // width: 180,
                 height: 50,

              ),

               SizedBox(
                width:300,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Stores',style: GoogleFonts.lato(fontWeight: FontWeight.w300,fontSize: 17,color: AppColors.blackColor,),textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),),
                    Text('Coupons',style: GoogleFonts.lato(fontWeight: FontWeight.w300,fontSize: 17,color: AppColors.blackColor),textHeightBehavior:TextHeightBehavior(applyHeightToFirstAscent: false),),
                    Text('Deals',style: GoogleFonts.lato(fontWeight: FontWeight.w300,fontSize: 17,color: AppColors.blackColor),textHeightBehavior:TextHeightBehavior(applyHeightToFirstAscent: false)),
                    Text('Blogs',style: GoogleFonts.lato(fontWeight: FontWeight.w300,fontSize: 17,color: AppColors.blackColor),textHeightBehavior:TextHeightBehavior(applyHeightToFirstAscent: false)),
                  ],

                ),
              ),


              if (HelperFunctions.getPlatform(context) == Platform.web)
                Container(
                  width: 180,
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topCenter,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.search_rounded,
                        color: AppColors.blackColor,
                        size: 25,
                      ),
                      SizedBox(width: 10,),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.w300,color: AppColors.blackColor),
                            isCollapsed: true,
                              isDense: true,
                              hintText: 'Search stores and deals',
                              contentPadding: EdgeInsets.only(
                                  left: 0, top: 6,bottom: 12),
                              border: UnderlineInputBorder(borderSide: BorderSide(width:0.3,)),
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width:0.3,)),
                              focusedBorder:UnderlineInputBorder(borderSide: BorderSide(width:0.3,))


    // border: InputBorder.none,
                              // border: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(16),
                              //     borderSide: BorderSide(
                              //         color: AppColors.blackColor.withOpacity(0.3))),
                              // enabledBorder: OutlineInputBorder(
                              //     borderRadius: BorderRadius.circular(16),
                              //     borderSide: BorderSide(
                              //         color: AppColors.primaryColor.withOpacity(0.3))),
                               ),
                        ),
                      ),
                    ],
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

          // Divider(),
        ],
      ),
    );
  }
}
