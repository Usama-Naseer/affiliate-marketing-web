import 'package:discountandcodes/screens/all_stores.dart';
import 'package:discountandcodes/screens/blogs_page.dart';
import 'package:discountandcodes/screens/coupons_by_ccategory.dart';
import 'package:discountandcodes/screens/home_screen.dart';
import 'package:discountandcodes/screens/privacy_policy.dart';
import 'package:discountandcodes/screens/store_page.dart';
import 'package:discountandcodes/screens/terms_of_use.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'stores',
            builder: (BuildContext context, GoRouterState state) {
              // return const DetailsScreen();
              return const AllStores();
            },
          ),
          GoRoute(
            path: 'coupons',
            builder: (BuildContext context, GoRouterState state) {
              // return const DetailsScreen();
              return const CouponsByCategory();
            },
          ),
          GoRoute(
            path: 'blogs',
            builder: (BuildContext context, GoRouterState state) {
              // return const DetailsScreen();
              return const BlogsPage();
            },
          ),
          GoRoute(
            path: 'termsOfUse',
            builder: (BuildContext context, GoRouterState state) {
              // return const DetailsScreen();
              return const Terms();
            },
          ),
          GoRoute(
            path: 'privacyPolicy',
            builder: (BuildContext context, GoRouterState state) {
              // return const DetailsScreen();
              return const PrivacyPolicy();
            },
          ),
          GoRoute(
            path: 'privacyPolicy',
            builder: (BuildContext context, GoRouterState state) {
              // return const DetailsScreen();
              return const PrivacyPolicy();
            },
          ),
          GoRoute(
            path: 'store/:storeName',
            name: 'store',
            builder: (BuildContext context, GoRouterState state) {
              // return const DetailsScreen();
              return  StorePage(storeName: state.pathParameters['storeName']!,);
            },
          ),

        ],
      ),
    ],
  );


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:_router ,
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

      // routes: {
      //   '/': (context) => const HomeScreen(),
      //   '/allStores': (context) => const AllStores(),
      //   '/store': (context) => const StorePage(),
      //   '/privacyPolicy': (context) => const PrivacyPolicy(),
      //   '/terms': (context) => const Terms(),
      //   '/allCoupons': (context) => const CouponsByCategory(),
      //   '/blogs': (context) => const BlogsPage(),
      //
      // },
      // initialRoute: '/',
    );
  }
}
