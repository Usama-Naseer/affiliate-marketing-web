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
      height: 100,
      decoration:  BoxDecoration(
        color: HexColor("#5333ed"),
        boxShadow: kElevationToShadow[2],
      ),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Image.asset(
                  'assets/images/test3.png',
                  height: 60,
                  width: 400,
                ),
              ]

          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     if(HelperFunctions.getPlatform(context)==Platform.web)
          //     Container(
          //       width: MediaQuery.of(context).size.width * 0.35,
          //       alignment: Alignment.center,
          //       child: TextField(
          //         decoration: InputDecoration(
          //             hintText: 'Search stores and deals',
          //             contentPadding: const EdgeInsets.symmetric(
          //                 horizontal: 30, vertical: 12),
          //             border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(24),
          //                 borderSide: BorderSide(
          //                     color: AppColors.greyColor.withOpacity(0.3))),
          //             enabledBorder: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(24),
          //                 borderSide: BorderSide(
          //                     color: AppColors.greyColor.withOpacity(0.3))),
          //             suffixIcon: Container(
          //               height: 35,
          //               width: 35,
          //               margin:
          //                   const EdgeInsets.only(right: 5, bottom: 5, top: 5),
          //               padding: const EdgeInsets.all(5),
          //               decoration: const BoxDecoration(
          //                   shape: BoxShape.circle, color: Color(0xff00da24)),
          //               child: const Center(
          //                 child: Icon(
          //                   Icons.search_rounded,
          //                   color: AppColors.whiteColor,
          //                 ),
          //               ),
          //             )),
          //       ),
          //     ),
              (HelperFunctions.getPlatform(context)!=Platform.mobile &&  HelperFunctions.getPlatformStanding(context)!=PlatformStanding.tabEnd)?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                   GestureDetector(
                     onTap: (){
                       Navigator.pushNamed(context, '/allCoupons');
                     },
                     child: Text(
                      'Coupons    ',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white, fontSize:17, fontWeight: FontWeight.w500),),
                  ),
                   ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/allStores');
                    },
                    child: Text(
                      'Stores ',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                            color: Colors.white,  fontSize:17, fontWeight: FontWeight.w500),),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlogsPage()));
                    },
                    child: Text(
                      'Blogs ',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,    fontSize:17, fontWeight: FontWeight.w500),),

                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlogsPage()));
                    },
                    child: Text(
                      ' Contact',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,    fontSize:17, fontWeight: FontWeight.w500),),

                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              )
              :PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                onSelected: (value) {
                  if(value=='1'){
                    Navigator.pushNamed(context, '/allCoupons');

                  }
                  else if(value=='2'){
                    Navigator.pushNamed(context, '/allStores');

                  }
                  else if(value =="3"){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogsPage()));

                  }

                  // your logic
                },
                itemBuilder: (BuildContext bc) {
                  return const [
                    PopupMenuItem(
                      value: '1',
                      child: Text("Coupons"),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Text("Stores"),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Text("Blogs"),
                    )
                  ];
                },
              ),


        ],
      ),
    );
  }
}
