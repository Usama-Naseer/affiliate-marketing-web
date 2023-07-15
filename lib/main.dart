import 'package:discountandcodes/screens/all_stores.dart';
import 'package:discountandcodes/screens/blogs_page.dart';
import 'package:discountandcodes/screens/coupons_by_ccategory.dart';
import 'package:discountandcodes/screens/home_screen.dart';
import 'package:discountandcodes/screens/privacy_policy.dart';
import 'package:discountandcodes/screens/store_page.dart';
import 'package:discountandcodes/screens/terms_of_use.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Alcatraz',
        primaryColor: Colors.red,

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

      routes: {
        '/': (context) => const HomeScreen(),
        '/allStores': (context) => const AllStores(),
        '/store': (context) => const StorePage(),
        '/privacyPolicy': (context) => const PrivacyPolicy(),
        '/terms': (context) => const Terms(),
        '/allCoupons': (context) => const CouponsByCategory(),
        '/blogs': (context) => const BlogsPage(),

      },
      initialRoute: '/',
    );
  }
}
