import 'package:discountandcodes/core/app_colors.dart';
import 'package:discountandcodes/widgets/footer.dart';
import 'package:discountandcodes/widgets/header.dart';
import 'package:discountandcodes/widgets/terms_conditions.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  TextStyle headline  = const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black);
  TextStyle bulletStyle  = const TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.black);
  TextStyle heading  = const TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const SizedBox(
              height: 10,
            ),
            // Container(
            //   color: Colors.white,
            //     margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
            //     child: const Header()),
              const SizedBox(height: 20,),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text('Discount&Codes privacy  policy\n',style: headline,),
                    const Text("At Discount&Codes, we value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, and disclose your personal data when you visit our affiliate marketing website.\n"),
                    Text('1. Information We Collect:\n',style: headline,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Text('1.1 ',style: heading,),
                        const Flexible(child: Text('Personal Information: When you visit our website, we may collect personal information such as your name, email address, and contact details when you voluntarily provide them to us.\n'))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Text('1.2 ',style: heading,),
                        const Flexible(child: Text('Automatically Collected Information: We may also collect certain information automatically when you visit our website, including your IP address, browser type, referring website, and pages you visit on our site. This information is collected through the use of cookies and similar tracking technologies.\n\n'))
                      ],
                    ),
                    Text('2. Use of Information:\n',style: headline,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                        Text('2.1 ',style: heading,),
                        const Flexible(child: Text('Personal Information: We may use the personal information you provide to us for the following purposes:.\n'))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  const [
                        SizedBox(width: 20,),
                        Flexible(child: Text('2.1.1. To provide you with information about our services, products, and promotio.\n')),

                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  const [
                        SizedBox(width: 20,),
                        Flexible(child: Text('2.1.2. To process and fulfill your requests for products or services..\n')),

                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  const [
                        SizedBox(width: 20,),
                        Flexible(child: Text('2.1.3. To improve our website and tailor the content and user experience.\n')),

                      ],
                    ),

                  ],
                ),
              )

          ],
        ),
      ),
    );
  }
}
